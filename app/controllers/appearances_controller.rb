class AppearancesController < ApplicationController
    
    def new
        @appearance = Appearance.new()
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        Appearance.create(
            guest_id: params[:appearance][:guest_id],
            episode_id: params[:appearance][:episode_id],
            rating: params[:appearance][:rating]
        )

        redirect_to "/episodes/#{Appearance.last.episode_id}"
    end

    
end