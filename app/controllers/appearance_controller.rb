class AppearancesController < ApplicationController

    

    def new
      @appearance = Appearance.create 
      @guests = Guest.all 
      @episodes = Episode.all  
    end

    def create

    end
  
end
  