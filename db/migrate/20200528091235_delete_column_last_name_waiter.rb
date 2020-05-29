class DeleteColumnLastNameWaiter < ActiveRecord::Migration[6.0]
  def change
  	remove_column :waiters, :last_name
  end
end
