class Listing < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :pictures
  has_many :saves
  
end
