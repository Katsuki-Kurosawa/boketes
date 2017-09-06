class ThemesController < ApplicationController

  def index
    @theme = Theme.all.order("created_at DESC").limit(20)
    @themes = @theme_id
    @bad_count = Answer.group(:user_id).order('sum_bads_count DESC').limit(3).sum(:bads_count)
  end

  def new
    @theme = Theme.new
    @bad_count = Answer.group(:user_id).order('sum_bads_count DESC').limit(3).sum(:bads_count)

  end

  def create
    @theme = Theme.new(theme_params)
    if @theme.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def theme_params
    params.require(:theme).permit(:image, :title, :agreement).merge(user_id: current_user.id)
  end


end
