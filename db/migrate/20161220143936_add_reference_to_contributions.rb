class AddReferenceToContributions < ActiveRecord::Migration[5.0]
  def change
    add_reference :contributions, :participant, index: true, foreign_key: true
  end
end
