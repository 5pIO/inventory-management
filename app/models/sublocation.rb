class Sublocation < ActiveRecord::Base
  belongs_to :location
  has_many :items
  validates :name, presence: true
  validates :location, presence: true
  def loc_name
    location.name
  end
  def with_loc_name
    "#{loc_name} - #{self.name}"
  end
end
