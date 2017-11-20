class AddActiveTrueDefaultValue < ActiveRecord::Migration[5.1]
  def change
  	change_column_default(:products, :active, true)
  end
end
