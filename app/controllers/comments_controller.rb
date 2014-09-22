class CommentsController < ApplicationController

  before_action :is_authenticated?


  def create
    @user = current_user
    @book = Book.find_by_id(params[:book_id])

    @comment = @book.comments.new

    comment_params = params.require(:comment).permit(:title, :body)
    @book.comments.create(comment_params)

    redirect_to root_path

  end





end
