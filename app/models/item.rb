class Item < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :description, length: { in: 0..500 }
  validates :price, numericality: true
  validates :price, numericality: { greater_than: 0}
  
  has_many :cart_lists
  has_many :carts, through: :cart_lists

  has_many :order_lists
  has_many :orders, through: :order_lists

  has_one_attached :image
  def get_quantity(cart)
    list = self.cart_lists.find_by(cart: cart, item: self)
    return list.quantity
  end

  def set_quantity(cart, num)
    list = self.cart_lists.find_by(cart: cart, item: self)
    list.quantity = num
    list.save
  end


  def self.find(input)
    find_by_title(input)
  end


end
