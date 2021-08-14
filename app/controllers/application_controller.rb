class ApplicationController < ActionController::Base
    include ApplicationHelper

    private 

    def redirect_if_not_logged_in
        redirect_to '/login' unless current_user
    end
end