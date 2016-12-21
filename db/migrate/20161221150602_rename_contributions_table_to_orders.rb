class RenameContributionsTableToOrders < ActiveRecord::Migration[5.0]
  def change
    rename_table :contributions, :orders
  end
end
