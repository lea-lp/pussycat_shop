class Item < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :image_url, uniqueness: true
  validates :description, length: { in: 0..500 }
  validates :price, numericality: true
  validates :price, numericality: { greater_than: 0}
  has_many :cart_lists
  has_many :carts, through: :cart_lists
  has_and_belongs_to_many :orders

end
