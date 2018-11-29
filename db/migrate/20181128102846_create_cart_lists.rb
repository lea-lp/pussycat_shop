class CreateCartLists < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_lists do |t|
      t.belongs_to :cart
      t.belongs_to :item
      t.integer :quantity

      t.timestamps
    end
  end
end
