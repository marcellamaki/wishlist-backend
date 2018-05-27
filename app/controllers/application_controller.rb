class ApplicationController < ActionController::API

    def authorize_user
      if !logged_in?
        redirect_to root_path
      end
    end

    def this_user
      @this_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
      !!this_user
    end

end
