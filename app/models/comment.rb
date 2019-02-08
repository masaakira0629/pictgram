class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :topic
  validates :content, presence: true

end
