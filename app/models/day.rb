# == Schema Information
#
# Table name: days
#
#  id           :integer          not null, primary key
#  date         :string
#  entry        :string
#  destination  :text
#  itinerary_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Day < ApplicationRecord
  belongs_to :itinerary
end
