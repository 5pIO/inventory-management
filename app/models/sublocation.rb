class Sublocation < ActiveRecord::Base
  belongs_to :location
  has_many :items
  def loc_name
    location.name
  end
  def with_loc_name
    if location.nil?
      name
    else
      "#{loc_name} - #{self.name}"
    end
  end
end
