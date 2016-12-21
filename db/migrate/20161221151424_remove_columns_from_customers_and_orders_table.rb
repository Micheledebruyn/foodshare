class RemoveColumnsFromCustomersAndOrdersTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :customers, :project_id
    rename_column :orders, :participant_id, :customer_id
  end
end
