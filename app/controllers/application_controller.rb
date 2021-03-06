class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  before_filter :authorize_login!
  helper_method :is_admin?

  private
  	def current_user
  	  if session[:user_id]
  	    @current_user ||= User.find(session[:user_id])
  	  end
  	end

  	def authorize_login!
  	  unless current_user
  	    redirect_to signin_path, notice: "You must sign in to view this page."
  	  end
  	end

    def is_admin?
      current_user.role == 'admin'
    end
end

