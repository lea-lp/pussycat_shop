class DropJoinTableItemsOrders < ActiveRecord::Migration[5.2]
  def change
    drop_join_table :items, :orders
  end
end
