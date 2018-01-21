# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  name       :text
#  list_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Task < ApplicationRecord
  belongs_to :list 
end
