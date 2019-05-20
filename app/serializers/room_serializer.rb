class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :property
end
