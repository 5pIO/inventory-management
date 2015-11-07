class Subcategory < ActiveRecord::Base
  belongs_to :category
  has_many :items

  def cat_name
    category.name
  end
  def with_cat_name
    if category.nil?
      name
    else
      "#{cat_name} - #{self.name}"
    end
  end
end
