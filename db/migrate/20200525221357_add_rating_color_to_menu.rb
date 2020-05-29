class AddRatingColorToMenu < ActiveRecord::Migration[6.0]
  def change
  	add_column :menus, :rating_color, :string
  end
end
