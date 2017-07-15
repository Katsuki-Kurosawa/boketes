class AnswersController < ApplicationController

  def index

  end

  def new
    @theme = Theme.find(params[:theme_id])

  end

end
