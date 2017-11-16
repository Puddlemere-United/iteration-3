class CreatePaymentTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_types do |t|
      t.references :user, foreign_key: true
      t.string :account_number
      t.string :title

      t.timestamps
    end
  end
end
