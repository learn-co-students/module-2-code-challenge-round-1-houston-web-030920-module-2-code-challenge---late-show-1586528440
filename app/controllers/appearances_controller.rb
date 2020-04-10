class AppearancesController < ApplicationController

    def new
        @guests = Guest.all
        @episodes = Episode.all

    end

    def create

        @appearance = Appearance.create({
        guest_id: params[:guest_id],
        episode_id: params[:episode_id],
        rating: params[:rating]
        })
        redirect_to"/episode/#{episode.id}"
    end

  end