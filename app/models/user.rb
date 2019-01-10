class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 15}
  validates :email, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :password, presence: true
  validates :password, length:{ in: 8..32}
  VALID_PW_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_secure_password

  has_many :topics
end
