class RemoveColumnUrlsMenu < ActiveRecord::Migration[6.0]
  def change
  	remove_column :menus, :image_url
  end
end
