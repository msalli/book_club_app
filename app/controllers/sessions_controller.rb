class SessionsController < ApplicationController
  def new
    # page with login form
    if session[:user_id] != nil
      redirect_to root_path
    end
  end

  def create
    @user = User.authenticate(params[:user][:email], params[:user][:password])

    if @user
      session[:user_id] = @user.id
      flash[:notice] = "You are logged in!"
      redirect_to root_path
    else
      flash[:notice] = "The information you entered does not match our records."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
