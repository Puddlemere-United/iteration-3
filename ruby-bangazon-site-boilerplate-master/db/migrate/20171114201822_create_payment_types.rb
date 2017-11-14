class CreatePaymentTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_types do |t|
      t.references :customer_id, foreign_key: true
      t.references :account_number, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
