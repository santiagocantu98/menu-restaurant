class RemoveColumnUrlsProduct < ActiveRecord::Migration[6.0]
  def change
  	remove_column :products, :image_url
  	remove_column :products, :video_url
  end
end
