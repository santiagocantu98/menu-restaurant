class CreateMediaFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :media_files do |t|
      t.string :type
      t.string :url

      t.timestamps
    end
  end
end
