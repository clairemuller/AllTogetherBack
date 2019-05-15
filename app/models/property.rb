class Property < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :rooms
  has_many :locations, through: :rooms
  has_many :items, through: :locations
end
