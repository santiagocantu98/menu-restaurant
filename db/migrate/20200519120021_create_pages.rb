class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.references :Menu, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
