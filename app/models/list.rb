# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  name       :text
#  item       :text
#  checkbox   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class List < ApplicationRecord
  belongs_to :user, :optional => true
  has_and_belongs_to_many :cities
  has_and_belongs_to_many :countries
  has_many :tasks
end
