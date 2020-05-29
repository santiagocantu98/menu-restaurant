class AddMenuColorToMenu < ActiveRecord::Migration[6.0]
  def change
  	add_column :menus, :menu_color, :string
  end
end
