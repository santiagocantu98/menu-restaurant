class RemoveColumnUrlsSection < ActiveRecord::Migration[6.0]
  def change
  	remove_column :sections, :image_url
  end
end
