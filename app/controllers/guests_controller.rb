class GuestsController < ApplicationController
  def index
      @guests = Guest.all
  end

  def show
      @guest = Guest.find_by(params[:id])
  end

  def new

  end

  def create
      Guest.create(
          guest_id: params[:guest_id],
          episode_id: params[:episode_id],
          rating: params[:rating]
      )
  end

  def delete
      @guest = Guest.find_by(params[:id])
      @guest.destroy
  end
end
