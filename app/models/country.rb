# == Schema Information
#
# Table name: countries
#
#  id             :integer          not null, primary key
#  name           :text
#  currency       :text
#  known_for      :text
#  link           :string
#  recommendation :text
#  region         :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Country < ApplicationRecord
  has_and_belongs_to_many :countries
end
