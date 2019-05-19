class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :note

  belongs_to :category
end
