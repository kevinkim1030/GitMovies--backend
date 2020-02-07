class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :description, :rating, :image
  has_many :reviews
end
