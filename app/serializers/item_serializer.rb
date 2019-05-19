class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :note, :location_id, :category_id

  # belongs_to :category
  # belongs_to :location
end
