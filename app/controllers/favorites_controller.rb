class FavoritesController < ApplicationController


  def create
    @favorite = Favorite.new(fave_params)
    @favorite.user_id = current_user.id
    @favorite.book_id = params[:book_id]
    @favorite.save

    render json: @favorite
  end

  def update
  end

  def show
  end

  private

  def fave_params
    params.require(:favorite).permit(:status)

  end

end
