class CreateOrderProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :order_products do |t|
      t.references :order_id, foreign_key: true
      t.references :product_id, foreign_key: true

      t.timestamps
    end
  end
end
