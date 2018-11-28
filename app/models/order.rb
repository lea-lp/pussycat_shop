class Order < ApplicationRecord
  belongs_to :user

  has_many :order_lists
  has_many :items, through: :order_lists

end
