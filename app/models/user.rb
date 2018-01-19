class User < ApplicationRecord
  has_many :notes
  has_many :lists 
end
