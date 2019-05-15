class Room < ApplicationRecord
  belongs_to :property, dependent: :destroy
  has_many :locations
  has_many :items, through: :locations
end
