class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.text :name
      t.float :latitude
      t.float :longitude
      t.boolean :visited
      t.integer :user_id

      t.timestamps
    end
  end
end
