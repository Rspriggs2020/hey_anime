class ReviewsController < ApplicationController
  #  before_action :set_show
    before_action :set_review, only: [:show, :edit, :update, :destroy]
    before_action :set_show
    #before_action :authenticate_user!

    def new 
        @review = Review.new
    end

    def show
      
    end

    def edit
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
        params.require(:review).permit(:rating, :comment)
    end

    def set_review
       @review = Review.find_by(params[:id])
    end

    def set_show
       @show = Show.find_by(params[:show_id])
    end
end