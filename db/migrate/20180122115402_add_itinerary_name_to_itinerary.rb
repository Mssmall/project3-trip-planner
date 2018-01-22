class AddItineraryNameToItinerary < ActiveRecord::Migration[5.1]
  def change
    add_column :itineraries, :itinerary_name, :text
  end
end
