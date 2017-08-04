class UsersController < ApplicationController

 def index
   @answer = Answer.all.order("created_at   DESC").limit(6)
   @answers = Answer.all.order("likes_count    DESC").limit(6)
   @answer_top = Answer.all.order("likes_count   DESC").limit(1)
   @bad_count = Answer.group(:user_id).order('sum_bads_count DESC').limit(3).sum(:bads_count)
   @bad = current_user.bads
   @like = current_user.likes
 end

 def edit
 end

 def show
  @user = current_user
  @theme = @user.themes.all.order("created_at   DESC").limit(3)
  @answer = @user.answers.all.order("created_at   DESC").limit(3)
  @bad_count = Answer.group(:user_id).order('sum_bads_count DESC').limit(3).sum(:bads_count)
end

end
