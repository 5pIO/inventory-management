class Asset < ActiveRecord::Base
  belongs_to :item
  validates :name, presence: true
  
  has_attached_file :file

  do_not_validate_attachment_file_type :file
end
