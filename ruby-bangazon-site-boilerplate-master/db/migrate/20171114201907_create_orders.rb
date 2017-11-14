class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :customer_id, foreign_key: true
      t.references :payment_id, foreign_key: true
      t.date :order_date

      t.timestamps
    end
  end
end
