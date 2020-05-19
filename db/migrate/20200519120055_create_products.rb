class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :Page, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :image_url
      t.string :video_url
      t.decimal :price
      t.decimal :rating

      t.timestamps
    end
  end
end
