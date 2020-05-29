class ChangeColumnTypeMedia < ActiveRecord::Migration[6.0]
  def change
  	rename_column :media_files, :type, :type_media
  end
end
