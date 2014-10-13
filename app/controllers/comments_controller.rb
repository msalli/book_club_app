class CommentsController < ApplicationController

  before_action :is_authenticated?

  def show
    @comment = Comment.find(params[:id])
    @commentable_type = @comment.commentable_type

    if @commentable_type == "Book"
      @parent = Book.find(@comment.commentable_id)
    elsif @commentable_type == "Comment"
      @parent = Comment.find_by_id(@comment.commentable_id)
    end

    @child = @comment.children.new
  end

  def create
    @book = Book.find_by_id(params[:book_id])

    comment_params = params.require(:comment).permit(:title, :body)
    @comment = @book.comments.create(comment_params)
    # sending json back to ajax cal
    render json: @comment
  end

  def create_child
    @comment = Comment.find_by_id(params[:id])
    @book = Book.find_by_id(@comment.commentable_id)
    child_params = params[:child].permit(:body)
    @child = @comment.children.create(child_params)

    render json: @child
  end


 private

  def comment_params
    params.require(:comment).permit(:title, :body)
  end

  def redirect_to_book
    redirect_to book_path @book.id
  end

end
