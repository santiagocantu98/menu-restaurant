class AddColumnPositionMediaFile < ActiveRecord::Migration[6.0]
  def change
  	add_column :media_files, :position, :decimal
  end
end
