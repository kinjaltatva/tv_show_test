class TvshowsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_tvshow, only: [:mark_as_favorite, :mark_as_unfavorite]
  
  def index
    @tv_shows = Tvshow.all
  end

  def mark_as_favorite
    current_user.favorite(@tv_show) if @tv_show.present? && current_user.present?
    redirect_to root_path
  end

  def mark_as_unfavorite
    current_user.unfavorite(@tv_show) if @tv_show.present? && current_user.present?
    redirect_to root_path
  end

  private

  def set_tvshow
    @tv_show = Tvshow.find_by(id: params[:id])
  end
end
