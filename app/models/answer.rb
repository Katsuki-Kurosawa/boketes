class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :theme
  has_many   :bads, dependent: :destroy
  has_many   :likes, dependent: :destroy

  def bad_user(user_id)
   bads.find_by(user_id: user_id)
 end

 def like_user(user_id)
   likes.find_by(user_id: user_id)
 end

end
