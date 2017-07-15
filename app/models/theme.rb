class Theme < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many   :answers
end
