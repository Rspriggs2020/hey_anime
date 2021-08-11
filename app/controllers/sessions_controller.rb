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

    def sign_in
        @user = User.find_by(email: params[:user][:email])

    def new
        @user = User.new
    end

    def login
        @user = User.new
    end

    def logout
        session.delete(:user_id)    
    end
end