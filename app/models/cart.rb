class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_lists
  has_many :items, through: :cart_lists
end
