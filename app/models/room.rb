class Room < ApplicationRecord
  belongs_to :property
  has_many :locations, dependent: :destroy
  has_many :items, through: :locations
end
