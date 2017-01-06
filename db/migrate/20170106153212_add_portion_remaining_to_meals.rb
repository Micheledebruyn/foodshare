class AddPortionRemainingToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :portion_remaining, :integer
  end
end
