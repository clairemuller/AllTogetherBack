class Location < ApplicationRecord
  belongs_to :room, dependent: :destroy
  has_many :items
end
