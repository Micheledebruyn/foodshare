class RenameParticipantsTableToCustomers < ActiveRecord::Migration[5.0]
  def change
    rename_table :participants, :customers
  end
end
