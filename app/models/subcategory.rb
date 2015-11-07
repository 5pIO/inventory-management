class Subcategory < ActiveRecord::Base
  belongs_to :category
  has_many :items
  validates :name, presence: true
  validates :category, presence: true

  def cat_name
    category.name
  end

  def with_cat_name
    "#{cat_name} - #{self.name}"
  end
end
