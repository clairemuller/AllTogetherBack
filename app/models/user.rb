class User < ApplicationRecord
  has_many :properties
  has_many :rooms, through: :properties
  has_many :locations, through: :rooms
  has_many :items, through: :locations
end
