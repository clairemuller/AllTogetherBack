class Item < ApplicationRecord
  belongs_to :location, dependent: :destroy
  belongs_to :category
end
