# == Schema Information
#
# Table name: itineraries
#
#  id          :integer          not null, primary key
#  day         :string
#  date        :string
#  entry       :string
#  destination :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Itinerary < ApplicationRecord
  belongs_to :city, :optional => true
end
