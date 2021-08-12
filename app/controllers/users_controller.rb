class UsersController < ApplicationController
    #skip_before_action :require_login, only:[:new, :create]

   #def new
    #    @user = User.new 
    #end

    #def create
     #   @user = User.new(user_params)
      #  if @user.valid?
       # @user.save
       # session[:user_id] = @user.id
       # redirect_to user_path(@user)
       # else
       # redirect_to '/layout'
       # end
    #end

    #def login
     #   @user = User.new
    #end

    #def show
     #   if User.find_by(id: params[:id]) && session[:user_id]
      #      @user = User.find_by(id: params[:id])
       #     render 'show'
       # else
        #    redirect_to '/'
        #end
    #end

    #def destroy
     #   session.delete :user_id
      #  redirect_to '/'
    #end



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