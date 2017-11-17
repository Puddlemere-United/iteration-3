class ChangePaymentTypeColumnInOrder < ActiveRecord::Migration[5.1]
  def change
  	rename_column :orders, :payment_id, :payment_type_id
  end
end
