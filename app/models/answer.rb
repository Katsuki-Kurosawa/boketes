class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :theme
  has_many   :bads, dependent: :destroy
  def bad_user(user_id)
   bads.find_by(user_id: user_id)
 end
end
