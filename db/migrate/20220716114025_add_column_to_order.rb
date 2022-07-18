class AddColumnToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :order_status, :integer , default: 0
    add_column :orders, :delivered_at, :datetime
    add_column :orders, :shipping_address, :text

  end
end
