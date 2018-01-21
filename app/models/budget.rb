# == Schema Information
#
# Table name: budgets
#
#  id           :integer          not null, primary key
#  cost         :integer
#  budget_item  :text
#  user_id      :integer
#  itinerary_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Budget < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :itinerary, :optional => true
end
