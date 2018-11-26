class Item < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :image_url, uniqueness: true
  validates :description, length: { in: 0..140 }
  validates :price, numericality: true
  validates :price, numericality: { greater_than: 0}
end
