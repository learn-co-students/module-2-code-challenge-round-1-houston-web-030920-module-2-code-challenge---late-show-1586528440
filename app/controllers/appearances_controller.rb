class AppearancesController < ApplicationController
    
    def index
        # @episodes= Episode.all
        # @guest= Guest.all
        @appearances=Appearance.all
    end
    
    def new
        @episodes= Episode.all
        @guests= Guest.all
    end

    def create
        @appearance= Appearance.create(guest_id:params[:guest_id],episode_id:params[:episode_id])
        redirect_to("/appearances/#{@appearance.episode.id}")
    end 

    def show
        @appearance= Appearance.find(params[:id])
    
    end

   
end