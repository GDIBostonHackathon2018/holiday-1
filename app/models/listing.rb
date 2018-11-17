class Listing < ApplicationRecord
  belongs_to :user
  has_many :pictures
  has_many :saves
  
end
