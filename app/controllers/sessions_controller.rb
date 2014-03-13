class SessionsController < ApplicationController
  skip_before_filter :authorize_login!

  def new
    redirect_to signup_path if current_user
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Sign in successfully."
    else
      render :new
    end
  end

  def destroy
    reset_session
    session.clear
    redirect_to signin_path
  end
end
