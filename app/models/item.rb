class Item < ActiveRecord::Base
  belongs_to :sublocation
  belongs_to :subcategory
  has_one :category, through: :subcategory
  has_one :location, through: :sublocation
  validates :name, presence: true
  validates :sublocation, presence: true
  validates :subcategory, presence: true
end
