class AddTextColorToMenu < ActiveRecord::Migration[6.0]
  def change
  	add_column :menus, :text_color, :string
  end
end
