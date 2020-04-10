class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all
    end

    def show
        @appearance = Appearance.find_by(params[:id])
    end

    def new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        Appearance.create(
            guest_id: params[:guest_id],
            episode_id: params[:episode_id],
            rating: params[:rating]
        )
    end

    def delete
        @appearance = Appearance.find_by(params[:id])
        @appearance.destroy
    end

  end