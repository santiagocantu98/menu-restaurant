class AddTicketIdToCalification < ActiveRecord::Migration[6.0]
  def change
  	add_column :califications, :ticket_id, :string
  end
end
