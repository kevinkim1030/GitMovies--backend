class User < ApplicationRecord
  has_many :reviews
  has_many :movies, through: :reviews

  validates :email, uniqueness: true 
  validates :email, presence: true 
  validates :password, presence: true 
  
end
