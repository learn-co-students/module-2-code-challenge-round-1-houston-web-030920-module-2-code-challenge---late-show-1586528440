class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @episodes = Episode.all
    @guest = Guest.find(params[:id])
  end

end
