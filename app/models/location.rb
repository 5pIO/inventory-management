class Location < ActiveRecord::Base
  has_many :sublocations
  has_many :items, through: :sublocations
end
