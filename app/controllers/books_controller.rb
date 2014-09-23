class BooksController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy]


  def index
    @book = Book.all()
    # for nav
    @current_user = current_user
  end

  def create
   # use amazon_request() to look up books
   Book.create(book_params)
  end

  def show
    @book

    @favorite = Favorite.new
    @comment = @book.comments.new
    @this_book = current_user.favorites.find_by_book_id(params[:id])

    # @parent = Comment.find_by_id(params[:id])
    # @comment_child = @parent.comments.new

    # for nav
    @current_user = current_user
  end

  def update
    @book.update(book_params)
  end

  def destroy
    @book.destroy
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(
      :title,
      :author,
      :description,
      :lg_img,
      :med_img,
      :rating,
      :tags
      )

  end

end
