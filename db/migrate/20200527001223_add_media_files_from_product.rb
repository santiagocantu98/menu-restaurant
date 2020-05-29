class AddMediaFilesFromProduct < ActiveRecord::Migration[6.0]
  def change
  	add_reference :media_files, :product, foreign_key: true
  end
end
