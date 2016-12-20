class AddReferencesToParticipants < ActiveRecord::Migration[5.0]
  def change
    remove_column :participants, :user_id
    add_reference :participants, :meal, index: true, foreign_key: true
    add_reference :participants, :user, index: true, foreign_key: true
  end
end
