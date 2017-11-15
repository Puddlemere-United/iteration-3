class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.references :product_type, foreign_key: true
      t.float :price
      t.integer :quantity
      t.integer :sold
      t.string :title
      t.text :description
      t.boolean :local_delivery
      t.text :image

      t.timestamps
    end
  end
end
