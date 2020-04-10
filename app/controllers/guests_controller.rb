class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @appearances = Appearance.where(guest_id: @guest.id)
  end

end
