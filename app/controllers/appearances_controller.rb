class AppearancesController < ApplicationController


    def index 
        @appearances = Appearance.all  
    end

    def show 
        @appearance = Appearance.find(params[:id])
    end

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
        if (@appearance.valid?)
            @appearance.save
        redirect_to appearance_path(@appearance)
        else 
            flash[:errors] = @appearance.errors.full_messages
            redirect_to "appearances/new"
        end
    end
end
