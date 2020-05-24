class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.decimal :rating
      t.string :image_url
      t.string :video_url
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
