class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.text :name
      t.text :currency
      t.text :known_for
      t.string :link
      t.text :recommendation
      t.text :region

      t.timestamps
    end
  end
end
