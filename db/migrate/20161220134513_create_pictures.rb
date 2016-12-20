class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.integer :meal_id
      t.string :picture_url

      t.timestamps
    end
  end
end
