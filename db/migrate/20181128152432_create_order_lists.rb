class CreateOrderLists < ActiveRecord::Migration[5.2]
  def change
    create_table :order_lists do |t|
      t.belongs_to :order
      t.belongs_to :item
      t.integer :quantity

      t.timestamps
    end
  end
end
