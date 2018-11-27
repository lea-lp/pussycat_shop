class CreateJoinTableItemsCarts < ActiveRecord::Migration[5.2]
  def change
    create_join_table :items, :carts do |t|
      # t.index [:item_id, :cart_id]
      # t.index [:cart_id, :item_id]
    end
  end
end
