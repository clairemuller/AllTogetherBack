class User < ApplicationRecord
  has_many :properties, dependent: :destroy
  has_many :rooms, through: :properties, dependent: :destroy
  has_many :locations, through: :rooms, dependent: :destroy
  has_many :items, through: :locations, dependent: :destroy
  has_many :categories, through: :items, dependent: :destroy
end
