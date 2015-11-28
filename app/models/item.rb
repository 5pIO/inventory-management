class Item < ActiveRecord::Base
  belongs_to :sublocation
  belongs_to :subcategory
  has_one :category, through: :subcategory
  has_one :location, through: :sublocation
  has_many :assets, dependent: :destroy
  validates :name, presence: true
  validates :sublocation, presence: true
  validates :subcategory, presence: true
  accepts_nested_attributes_for :assets,
    allow_destroy: true,
    reject_if: :all_blank
end
