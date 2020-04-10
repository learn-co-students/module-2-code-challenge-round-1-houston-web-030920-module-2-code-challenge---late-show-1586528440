class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @ratings = @episode.appearances.map {|appearance| appearance.rating}
    @average_rating = @ratings.sum / @ratings.length
  end

end
