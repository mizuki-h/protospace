class PrototypeImage < ActiveRecord::Base

  belongs_to :prototype
  mount_uploader :content, PrototypeImageUploader
  validates_presence_of :content

end


