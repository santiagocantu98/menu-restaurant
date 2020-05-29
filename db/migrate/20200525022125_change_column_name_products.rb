class ChangeColumnNameProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :posicion, :position
  end
end
