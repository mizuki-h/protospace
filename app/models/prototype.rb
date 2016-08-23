class Prototype < ActiveRecord::Base
  has_many :prototype_images, dependent: :delete_all
  has_many :likes, dependent: :destroy
  has_many :comments
  belongs_to :user, dependent: :destroy
  accepts_nested_attributes_for :prototype_images
  validates :title, :catchcopy, :concept, presence: true

  def like_user(user)
   likes.find_by(user_id: user)
  end
end

