class SessionsController < ApplicationController


   # def create
    #    @user = User.find_by_email(params[:session][:email])
     #   if @user && @user.authenticate(params[:session][:password])
      #      session[:user_id] = @user.id
       #     redirect_to '/'
       # else
        #    redirect_to 'login'
       # end
    #end

    def signup
        @user = User.new
    end


    def signin
        @user = User.find_by(email: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to shows_path
        else
            redirect_to login_path
        end
    end

    #def new
     #   @user = User.new
    #end

    def login
        @user = User.new
    end

    def logout
        session.delete(:user_id)    
        redirect_to root_path
    end
end