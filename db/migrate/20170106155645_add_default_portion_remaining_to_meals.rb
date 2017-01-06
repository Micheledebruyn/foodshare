class AddDefaultPortionRemainingToMeals < ActiveRecord::Migration[5.0]
  def change
    change_column :meals, :portion_remaining, :integer, default: 0
  end
end
