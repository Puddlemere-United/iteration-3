class AddProductSoldDefaultValue < ActiveRecord::Migration[5.1]
  def change
  	  	change_column_default(:products, :sold, 0)
  end
end
