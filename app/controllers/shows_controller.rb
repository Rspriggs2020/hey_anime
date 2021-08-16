class ShowsController < ApplicationController
    before_action :set_show, only: [:show, :edit, :update, :destroy]

    def search
        if params[:search].present?
            @shows = Show.search(params[:search])
        else
            @show = Show.all
        end
    end

    def index
        @shows = Show.all
    end

    def new
        @show = Show.new
    end

    def edit
    end

    def create
        @show = Show.new(show_params)
        if @show.save
            redirect_to @show 
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
        show.delete
    end

    def show
        @reviews = Review.where(show_id: @show.id).order("created_at DESC")
    end

    private 

    def show_params
        params.require(:show).permit(:title, :genre, :description, :seasons, :rating)
    end

    def set_show
       @show = Show.find(params[:id])
    end
end