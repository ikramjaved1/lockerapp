class AddColumnsToCartItem < ActiveRecord::Migration[6.0]
  def change
    add_column :cart_items, :quantity, :integer
    add_reference :cart_items, :product, null: false, foreign_key: true
    add_reference :cart_items, :cart, null: false, foreign_key: true
  end
end
