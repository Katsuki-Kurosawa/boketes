class BadsController < ApplicationController
  def index
  end

  def create
    @bad = Bad.new(user_id: current_user.id, answer_id: params[:answer_id])
    @bads = Bad.where(answer_id: params[:answer_id])
    @answer = Answer.all.order("created_at  DESC").limit(20)
    if @bad.save
      redirect_to answers_path
    end
  end

  def destroy
    bad = Bad.find_by(user_id: current_user.id, answer_id: params[:answer_id])
 if   bad.destroy
  redirect_to answers_path
end
    @bads = Bad.where(answer_id: params[:answer_id])
    @answer = Answer.all.order("created_at  DESC").limit(20)
  end
end
