class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end
    def create
        @appearance = Appearance.create({
            rating: params[:appearance][:rating],
            guest_id: params[:appearance][:guest_id],
            episode_id: params[:appearance][:episode_id]
        })
        @episode = Episode.find_by(id: params[:appearance][:episode_id])
        redirect_to @episode
    end
end
