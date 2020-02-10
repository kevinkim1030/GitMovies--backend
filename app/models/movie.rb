require 'rest-client'
require 'json'
require 'nokogiri'

class Movie < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  
  def self.fetch_movie(search_query)
    # i = 0
    




    # puts "fetching movies"
    # response_string = RestClient.get("https://api.themoviedb.org/3/search/movie?api_key=d0c033000912e5602757518af0d41cce")
    # parsed = JSON.parse(response_string)
    # movie_name = parsed["original_title"]
    # movie_description = parsed["overview"]
    # movie_year = parsed["release_date"].slice(0,4).to_i
    # movie_rating = parsed["vote_average"]

    # image_extension = parsed["belongs_to_collection"]["poster_path"]
    # movie_image = "https://image.tmdb.org/t/p/w500#{image_extension}"

    # movie_instance = {
    #   name: movie_name,
    #   year: movie_year,
    #   description: movie_description,
    #   rating: movie_rating,
    #   image: movie_image}

  end




end
 