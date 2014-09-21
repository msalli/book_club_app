class SessionsController < ApplicationController
  def new
    # page with login form
    # if session[:user_id] != nil
    #   redirect_to root_path
    # end
  end

  def create
    #where auth happens
    @user = User.authenticate(params[:user][:email], params[:user][:password])

    if @user
      session[:user_id] = @user.id
      redirect_to root_path, :notice => "You are logged in!"
    else
      flash.now[:notice] = "The information you entered doesn't match our records."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
