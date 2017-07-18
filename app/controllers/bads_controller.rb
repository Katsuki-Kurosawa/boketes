class BadsController < ApplicationController
  def index
  end

  def create
    @bad = Bad.create(user_id: current_user.id, answer_id: params[:answer_id])
    @bads = Bad.where(answer_id: params[:answer_id])
    @answer = Answer.all.order("created_at  DESC").limit(20)
  end

  def destroy
    bad = Bad.find_by(user_id: current_user.id, answer_id: params[:answer_id])
    bad.destroy
    @bads = Bad.where(answer_id: params[:answer_id])
    @answer = Answer.all.order("created_at  DESC").limit(20)
  end
end
