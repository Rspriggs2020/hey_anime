class ReviewsController < ApplicationController
    #before_action :set_show
    before_action :set_review, only:[:show, :edit, :update, :destory]

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
    end

    private

    def review_params
        params.require(:review).permit(:rating, :comment, :show_id, :user_id)
    end

    def set_review
        @review = Review.find(params[:id])
    end

    #def set_show
     #   @show = Show.find(params[:show_id])
    #end
end