class ApplicationController < ActionController::Base
    include ApplicationHelper


    private 

    def redirect_if_not_logged_in
        redirect_to '/login' unless current_user
    end
    #helper_method :current_user
    #helper_method :logged_in? 


    #def current_user
    #    @current_user = (User.find_by(id: session[:user_id]) || User.new)
    #end  

    #def require_user
    #    redirect_to '/login' unless current_user
    #end


   # def logged_in?
    #    session[:user_id] 
    #end 
end