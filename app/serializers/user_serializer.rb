class UserSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :properties
  has_many :rooms
  has_many :locations
  has_many :items
end
