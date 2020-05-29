class AddColumnRoleToWaiter < ActiveRecord::Migration[6.0]
  def change
  	add_column :waiters, :role, :string
  end
end
