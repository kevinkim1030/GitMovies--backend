class ReviewsController < ApplicationController

  def index
    reviews = Review.all 
    render json: reviews
  end

  def new
    review = Review.new
  end

  def create
    # byebug
    movie = Movie.find_or_create_by(name: review_params[1]["original_title"], year: review_params[1]["release_date"].slice(0,4), description: review_params[1]["overview"], rating: review_params[1]["vote_average"], image: "https://image.tmdb.org/t/p/w500#{review_params[1]["poster_path"]}")
    review = Review.create(text: review_params[0]["text"], user_id: review_params[0]["user_id"], movie_id: movie.id)
    # review.update_attributes(review_params)
    render json: review
  end

  def update
    review = Review.find(review_params[:id])
    review.update(review_params)
    render json: review
  end

  def destroy
    review = Review.find(review_params[:id])
    review.destroy
  end


  private

  def review_params
    params.require(:review)
  end

end
