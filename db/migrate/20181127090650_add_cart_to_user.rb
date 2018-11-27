class AddCartToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :cart
  end
end
