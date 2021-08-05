class ShowsController < ApplicationController
    #before_action :require_login

    def index
        @shows = Show.all
    end

    def new
        @movie = Movie.new
    end

    def show
        @show = Show.find(params[:id])
    end

    def create
    end

    def edit 
    end

    def update

    end

    def destroy

    end

    private 

    def show_params

    end

end