class Theme < ApplicationRecord
 validates_acceptance_of :agreement,  presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many   :answers
end
