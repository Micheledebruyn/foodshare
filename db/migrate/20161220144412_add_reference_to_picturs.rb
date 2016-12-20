class AddReferenceToPicturs < ActiveRecord::Migration[5.0]
  def change
    remove_column :pictures, :meal_id
    add_reference :pictures, :meal, index: true, foreign_key: true
  end
end
