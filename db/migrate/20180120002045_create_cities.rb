class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.text :name
      t.text :language
      t.text :attraction
      t.string :link
      t.text :recommendation
      t.integer :country_id
      t.integer :location_id

      t.timestamps
    end
  end
end
