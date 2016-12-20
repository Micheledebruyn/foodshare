class AddUserReferencesToLocations < ActiveRecord::Migration[5.0]
  def change
    add_reference :locations, :user, index: true, foreign_key: true
  end
end
