class AddProductReferenceToMediaFiles < ActiveRecord::Migration[6.0]
  def change
    add_reference :media_files, :product, null: false, foreign_key: true
  end
end
