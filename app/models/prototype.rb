class Prototype < ActiveRecord::Base
  has_many prototype_images
  belongs_to user
  accepts_nested_attributes_for :prototype_images
  validates :title, :catchcopy, :concept, presence: true
end
