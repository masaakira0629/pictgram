class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 15}
  validates :email, presence: true
  validates :email, format: { with: /\A[a-z0-9_]+@[a-z0-9.]+\.[a-z0-9.]+\z/i }
  validates :password, presence: true
  validates :password, length:{ in: 8..32}
  validates :password, format: { with: /(?=.*?[a-z])(?=.*?\d)/i }

  has_secure_password

  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
  has_many :comments,through: :comments, source: 'topic'
end
