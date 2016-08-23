class Like < ActiveRecord::Base
  belongs_to :prototype, counter_cache: :count
  belongs_to :user
end
