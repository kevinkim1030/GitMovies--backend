class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :tier
  has_many :reviews
end
