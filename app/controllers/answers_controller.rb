class AnswersController < ApplicationController



  def index
    @answer = Answer.all.order("created_at  DESC").limit(20)
    @bad = current_user.bads
    @bad_count = Answer.group(:user_id).order('sum_bads_count DESC').limit(3).sum(:bads_count)
  end

  def new
    @theme = Theme.find(params[:theme_id])
    @answer  = Answer.new
    @bad_count = Answer.group(:user_id).order('sum_bads_count DESC').limit(3).sum(:bads_count)
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
