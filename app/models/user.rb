# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  password_digest :string
#  username        :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :notes
  has_many :lists
  has_many :itineraries
  has_many :locations
  has_many :budgets
  has_many :tasks, :through => :lists
  has_many :days, :through => :itineraries
end
