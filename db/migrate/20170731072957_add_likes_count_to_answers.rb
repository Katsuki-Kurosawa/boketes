class AddLikesCountToAnswers < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :likes_count, :integer
  end
end
