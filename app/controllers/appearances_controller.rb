class AppearancesController < ApplicationController

    def index
      @appearances = Appearance.all
    end

    def new
      @appearance = Appearance.new
      @episodes = Episode.all
      @guests = Guest.all
    end

    def create
      @appearance = Appearance.create({
        rating: params[:appearance][:rating],
        episode_id: params[:appearance][:episode_id],
        guest_id: params[:appearance][:guest_id]
      })
      redirect_to("/episodes/#{@appearance.episode_id}")
    end



  end