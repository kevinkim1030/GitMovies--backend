class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password
  has_many :reviews
end
