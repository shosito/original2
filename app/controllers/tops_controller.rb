class TopsController < ApplicationController
  def index
    @contents = Content.order("id DESC").page(params[:page]).per(2)
    @videos = Video.order("id DESC").page(params[:page]).per(2)
  end
end
