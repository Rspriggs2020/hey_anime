class UsersController < ApplicationController
    
    def signup
        @user = User.new(user_params)
        if @user.save 
            session[:user_id] = @user.id 
            redirect_to shows_path
        else
            render 'sessions/signup'
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end