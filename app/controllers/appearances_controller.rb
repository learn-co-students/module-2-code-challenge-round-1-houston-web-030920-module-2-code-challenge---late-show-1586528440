class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all
    end 

    def show
        @appearance = Appearance.find(params[:id])
    end 

    def new
        @guests = Guest.all
        @episodes = Episode.all
        @appearance = Appearance.new()
    end

    def create
        @appearance = Appearance.create ({
            episode_id: params[:appearance][:episode_id],
            guest_id: params[:appearance][:guest_id],
            rating: params[:appearance][:rating]
        })
        @episode = Episode.find(params[:appearance][:episode_id])
        redirect_to ("/episodes/#{@episode.id}")
    end 
    
  end