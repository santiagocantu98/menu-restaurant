class CreateCalifications < ActiveRecord::Migration[6.0]
  def change
    create_table :califications do |t|
      t.references :menu, null: false, foreign_key: true
      t.references :waiter, null: false, foreign_key: true
      t.decimal :rating
      t.string :comment
      t.string :email

      t.timestamps
    end
  end
end
