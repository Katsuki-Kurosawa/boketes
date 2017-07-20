class PhotoController < ApplicationController

  def index
      @bad_count = Answer.group(:user_id).order('sum_bads_count DESC').limit(3).sum(:bads_count)
  end

end
