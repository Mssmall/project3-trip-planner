# == Schema Information
#
# Table name: cities
#
#  id             :integer          not null, primary key
#  name           :text
#  language       :text
#  attraction     :text
#  link           :string
#  recommendation :text
#  country_id     :integer
#  location_id    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class City < ApplicationRecord
  has_and_belongs_to_many :lists
end
