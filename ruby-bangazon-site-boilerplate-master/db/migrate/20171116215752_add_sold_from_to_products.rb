class AddSoldFromToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :city_sold_from, :string
  end
end
