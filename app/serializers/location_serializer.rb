class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :room
  # has_many :items
end
