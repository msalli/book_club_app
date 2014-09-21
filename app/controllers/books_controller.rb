class BooksController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy]


  def index
    @book = Book.all()

  end

  def create
   # use amazon_request() to look up books
   Book.create(book_params)

  end

  def show
    @book

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
