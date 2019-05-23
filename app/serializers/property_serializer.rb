class PropertySerializer < ActiveModel::Serializer
  attributes :id, :name

  # belongs_to :user
end
