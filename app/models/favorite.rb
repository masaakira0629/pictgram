class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  belongs_to :comments
end
