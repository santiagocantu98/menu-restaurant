class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.references :admin_user, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
