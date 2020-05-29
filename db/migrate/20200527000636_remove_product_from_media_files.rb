class RemoveProductFromMediaFiles < ActiveRecord::Migration[6.0]
  def change
    remove_reference :media_files, :product, null: false, foreign_key: true
  end
end
