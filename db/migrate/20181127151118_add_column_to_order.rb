class AddColumnToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :total_price, :decimal
  end
end
