class BooksController < ApplicationController

  def index
    @book = Book.all()

  end

  def create
   # use amazon_request() to look up books

  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def set_params
  end

end
