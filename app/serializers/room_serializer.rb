class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :property
  # has_many :locations
end
