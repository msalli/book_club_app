class UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    flash[:notice] = "Your account has been created! Login."
    redirect_to root_path

  end

  def show
    @user

    #for nav
    @current_user = current_user

  end

  def update
    @user.update(user_params)

    #for nav
    @current_user = current_user

  end

  def destroy
    @user.destroy

  end

  private

  def find_user
    @user = User.find_by_id(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :image_url
      )
  end

end
