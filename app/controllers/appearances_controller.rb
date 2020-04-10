class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    @appearance = Appearance.create({
      guest_id: params[:guest][:id],
      episode_id: params[:episode][:id],
      rating: params[:episode][:rating]
      })
      redirect_to()
  end

  def show
    @appearance = Appearance.find(params[:id])
    @episode = Episode.find(params[:episode][:id])
  end
end
