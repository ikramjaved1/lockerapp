class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :Commentor
      t.string :comment
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
