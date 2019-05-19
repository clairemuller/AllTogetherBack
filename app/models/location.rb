class Location < ApplicationRecord
  belongs_to :room
  has_many :items, dependent: :destroy
end
