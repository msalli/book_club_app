class CommentsController < ApplicationController
  before_action :is_authenticated?
  before_action :find_parent

  def create
    @comment = @parent.comments.create(comment_params)

    # sending json back to ajax cal
    render json: @comment
  end


 private

  def find_parent
    @parent = @book = Book.find_by_id(params[:book_id])

    if params[:id]
      @parent = Comment.find_by_id(params[:id])
    end
  end

  def comment_params
    params.require(:comment).permit(:title, :body)
  end

  def redirect_to_book
    redirect_to book_path @book.id
  end

end
