class MoviesController < ApplicationController

  def index
    movies = Movie.all 
    render json: movies
  end

  def new
    movie = Movie.new
  end

  def create
    movie = Movie.find_or_create_by(name: movie_params[:name], year: movie_params[:year], description: movie_params[:description], rating: movie_params[:rating], image: movie_params[:name])

    render json: movie
  end

  def update
    movie = Movie.find(movie_params[:id])
    movie.update(movie_params)
    
    render json: movie
  end


  private

  def movie_params
    params.require(:movie).permit(:name, :year, :description, :rating, :image)
  end

end
