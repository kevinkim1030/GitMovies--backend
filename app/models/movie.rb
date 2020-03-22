require 'rest-client'
require 'json'
require 'nokogiri'

class Movie < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
end
 