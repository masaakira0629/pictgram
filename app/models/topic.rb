class Topic < ApplicationRecord
  validates :user_id,presence: true
  validates :description, presence: true
  validates :image, presence: true

  def extension_white_list
      ['jpg', 'jpeg', 'png']
  end

  belongs_to :user

  mount_uploader :image, ImageUploader
end
