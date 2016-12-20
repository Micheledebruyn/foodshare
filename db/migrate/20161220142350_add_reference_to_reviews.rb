class AddReferenceToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :meal, index: true, foreign_key: true
  end
end
