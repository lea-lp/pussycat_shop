class CartList < ApplicationRecord
  belongs_to :cart
  belongs_to :item

  # validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :cart, presence: true
  validates :item, presence: true

end
