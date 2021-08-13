class ShowsController < ApplicationController
    #before_action :require_login

    def search
        if params[:search].present?
            @shows = Show.search(params[:search])
        else
            @show = Show.all
        end
    end

    def index
        @shows = Show.all.order(:title)
    end

    def new
        @show = Show.new
    end

    def show
        @show = Show.find(params[:id])
    end

    def edit
    end

    def create
        @show = Show.new(show_params)
        if @show.save
            redirect_to @movie 
        else
            render 'new'
        end
    end

    def update
        if @show.update(show_params)
            redirect_to @show 
        else
            render 'edit'
        end
    end

    def destroy
        @show.destory
        redirect_to shows_path
    end

    private 

    def show_params
        params.require(:show).permit(:title, :genre, :description, :seasons, :rating, :user_id)
    end

    def set_show
        @show = Show.find(params[:id])
    end
end