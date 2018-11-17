class User < ApplicationRecord
  has_many :saves
  has_many :listings
  has_many :trips
  
end
