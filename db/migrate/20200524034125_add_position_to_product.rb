class AddPositionToProduct < ActiveRecord::Migration[6.0]
  def change
  	add_column :products, :posicion, :decimal
  end
end
