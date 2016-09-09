class Prototype < ActiveRecord::Base
  has_many :prototype_images, dependent: :delete_all
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :prototype_images
  validates :title, :catchcopy, :concept, presence: true

  acts_as_taggable_on :prototypes
  acts_as_taggable

  def like_user(user)
   likes.find_by(user_id: user)
  end
end

