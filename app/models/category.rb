class Category < ActiveRecord::Base
  has_many :subcategories
  has_many :items, through: :subcategories
end
