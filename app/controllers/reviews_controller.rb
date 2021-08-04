class ReviewsController < ApplicationController

    def index 
        @reviews = Review.all 
    end

    def new 
        @review = Review.new
    end

    def show 
    end

    def edit
    end

    def create
        @review = Review.new(review_params)

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
end