class AddReferenceToMeals < ActiveRecord::Migration[5.0]
  def change
    add_index :meals, :creator_id
    add_foreign_key :meals, :users, column: "creator_id"
  end
end
