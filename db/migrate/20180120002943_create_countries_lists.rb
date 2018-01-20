class CreateCountriesLists < ActiveRecord::Migration[5.1]
  def change
    create_table :countries_lists, :id => false do |t|
      t.integer :country_id
      t.integer :list_id
    end
  end
end
