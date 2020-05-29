class CreateWaiters < ActiveRecord::Migration[6.0]
  def change
    create_table :waiters do |t|
      t.string :name
      t.string :last_name
      t.string :image_url
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
