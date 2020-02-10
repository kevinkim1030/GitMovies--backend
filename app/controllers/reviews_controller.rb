class ReviewsController < ApplicationController

  def index
    reviews = Review.all 
    render json: reviews
  end

  def new
    review = Review.new
  end

  def create
    review = Review.find_or_create_by(text: review_params[:text], user_id: review_params[:user_id], movie_id: review_params[:movie_id])

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
    params.require(:review).permit(:text, :user_id, :movie_id)
  end

end
