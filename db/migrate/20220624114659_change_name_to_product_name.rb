class ChangeNameToProductName < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :name, :product_name
  end
end
