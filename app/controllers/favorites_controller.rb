class FavoritesController < ApplicationController
  def create
    fave_params = params.require(:favorite).permit(:user_id, :book_id, :status)
    @favorite.user_id = current_user.id
    @favorite.book_id = params[:book_id]
    @favorite = Favorite.new(fave_params)
    @favorite.save
  end

  def update
  end

  def show
  end
end
