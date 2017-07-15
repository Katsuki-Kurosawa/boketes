class UsersController < ApplicationController

 def index
   @answer = Answer.all.order("created_at   DESC").limit(6)
 end


  def show
    
  end

end
