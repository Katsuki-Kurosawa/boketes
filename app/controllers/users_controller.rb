class UsersController < ApplicationController

 def index
   @answer = Answer.all.order("created_at   DESC").limit(6)
 end


  def show
    @user = current_user
    @theme = @user.themes.all
    @answer = @user.answers.all
  end

end
