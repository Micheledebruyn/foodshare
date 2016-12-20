class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :stars

      t.integer :meal_id
      t.timestamps
    end
  end
end
