class Property < ApplicationRecord
  belongs_to :user
  has_many :rooms, dependent: :destroy
  has_many :locations, through: :rooms
  has_many :items, through: :locations
end
