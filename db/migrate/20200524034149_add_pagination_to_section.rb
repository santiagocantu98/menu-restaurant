class AddPaginationToSection < ActiveRecord::Migration[6.0]
  def change
  	add_column :sections, :pagina, :decimal
  end
end
