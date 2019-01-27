class Like < ApplicationRecord:Base

  belongs_to :tweet, counter_cache: :likes_count
  belongs_to :user
end
