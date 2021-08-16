class ReviewsController < ApplicationController
    before_action :set_review, only: [:show, :edit, :update, :destroy]
    before_action :set_show

    def index 
        @reviews = Review.all
    end
    def new 
        @review = Review.new
    end

    def show
        if @review.user_id == current_user.id
          render 'show'
        else 
          redirect_to show_path(@show)
        end
    end

    def edit
        if @review.user_id == current_user.id
          render 'edit'
        else 
        redirect_to show_path(@show)
        end
    end

    def create
        @review = Review.create(review_params)
        @review.user_id = current_user.id 
        @review.show_id = @show.id

        if @review.save
           redirect_to @review 
        else
           render 'new'
        end
    end

    def update
        @review.update(review_params)
    end

    def destroy
        @review.destroy
        redirect_to @show
    end

    def show
       render 'show'
    end


    private

    def review_params
        params.require(:review).permit(:comment, :rating, :user_id, :show_id)
    end

    def set_review
       @review = Review.find_by(params[:id])
    end

    def set_show
       @show = Show.find_by(params[:show_id])
    end
end