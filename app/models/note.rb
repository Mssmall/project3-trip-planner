# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  heading    :text
#  note       :text
#  date       :date
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Note < ApplicationRecord
  belongs_to :user, :optional => true
end
