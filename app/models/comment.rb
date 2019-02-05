class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :topic
  validates :comments, presence: true

end
