class ChangeColumnNameSections < ActiveRecord::Migration[6.0]
  def change
    rename_column :sections, :pagina, :page_number
  end
end
