class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :title
      t.text :description
      t.integer :quantity
      t.datetime :start_date
      t.datetime :end_date

      t.integer :creator_id

      t.timestamps
    end
  end
end
