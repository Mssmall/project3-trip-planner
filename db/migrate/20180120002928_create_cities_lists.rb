class CreateCitiesLists < ActiveRecord::Migration[5.1]
  def change
    create_table :cities_lists, :id => false do |t|
      t.integer :city_id
      t.integer :list_id
    end
  end
end
