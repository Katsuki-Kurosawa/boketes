class LikesController < ApplicationController
  def index
  end

  def create
    @like = Like.new(user_id: current_user.id, answer_id: params[:answer_id])
    @likes = Like.where(answer_id: params[:answer_id])
    @answer = Answer.all.order("created_at  DESC").limit(20)
    if @like.save
      redirect_to answers_path
    end
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, answer_id: params[:answer_id])
    if   like.destroy
      redirect_to answers_path
    end
    @likes = Like.where(answer_id: params[:answer_id])
    @answer = Answer.all.order("created_at  DESC").limit(20)
  end
end
