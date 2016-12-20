class RemoveColumnFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :meal_id
  end
end
