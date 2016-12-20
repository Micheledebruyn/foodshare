class CreateContributions < ActiveRecord::Migration[5.0]
  def change
    create_table :contributions do |t|
      t.integer :amount
      t.text :message
      t.timestamps
    end
  end
end
