class AnswersController < ApplicationController

  def index
    @answer = Answer.all.order("created_at  DESC").limit(20)
    @bad = current_user.bads
  end

  def new
    @theme = Theme.find(params[:theme_id])
    @answer  = Answer.new
  end

  def create
   @answer = Answer.new(answer_params)
   if @answer.save
    redirect_to root_path
  end
end

private

def answer_params
  params.permit(:answer,:theme_id).merge(user_id: current_user.id)
end

end
