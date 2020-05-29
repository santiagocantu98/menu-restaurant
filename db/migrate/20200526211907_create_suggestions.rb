class CreateSuggestions < ActiveRecord::Migration[6.0]
  def change
    create_table :suggestions do |t|
      t.references :menu, null: false, foreign_key: true
      t.string :comment
      t.string :email

      t.timestamps
    end
  end
end
