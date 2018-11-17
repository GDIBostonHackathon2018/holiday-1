class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  has_many :pictures
  has_many :saves
  
end
