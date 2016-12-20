class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.integer :house_number
      t.string :city
      t.float :lat
      t.float :lng
      t.integer :user_id

      t.timestamps
    end
  end
end
