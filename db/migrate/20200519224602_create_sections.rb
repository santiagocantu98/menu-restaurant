class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :title
      t.string :description
      t.references :menu, null: false, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end
