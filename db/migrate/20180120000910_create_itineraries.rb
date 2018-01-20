class CreateItineraries < ActiveRecord::Migration[5.1]
  def change
    create_table :itineraries do |t|
      t.string :day
      t.string :date
      t.string :entry
      t.text :destination
      t.integer :user_id
      t.timestamps
    end
  end
end
