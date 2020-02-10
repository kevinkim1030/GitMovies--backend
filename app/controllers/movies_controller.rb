class MoviesController < ApplicationController

  def index
    movies = Movie.all 
    render json: movies
  end

  def create
    movie = Movie.create(name: params[:name], year: params[:year], description: params[:description], rating: params[:rating], image: params[:name])

    render json: movie
  end

  def update
    movie = Movie.find(params[:id])
    Movie.update(movie_params)
    
    render json: movie
  end


  private

  def movie_params
    params.permit(:name, :year, :description, :rating, :image)
  end

end
