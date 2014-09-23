class CommentsController < ApplicationController

  before_action :is_authenticated?
  before_action :find_parent

  def create
    @book = Book.find_by_id(params[:book_id])

    comment_params = params.require(:comment).permit(:title, :body)
    @comment = @book.comments.create(comment_params)

    # sending json back to ajax cal
    render json: @comment
  end

  def create_child
    @parent.comments.create(comment_params)
    redirect_to_book
  end


  private

  def find_parent
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
