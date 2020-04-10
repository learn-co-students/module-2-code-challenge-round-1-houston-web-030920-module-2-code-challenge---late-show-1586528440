class EpisodesController < ApplicationController

  def index
      @episodes = Episode.all
  end

  def show
      @episode = Episode.find_by(params[:id])
  end

  def new

  end

  def create
      Episode.create(
          date: params[:date]
          number: params[:num]
      )
  end

  def delete
    @episdode = Episode.find_by(params[:id])
    @episode.destroy
  end
end
