class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @rating = @guest.appearances.map{|a| a.rating}.sum/@guest.appearances.length
  end
end
