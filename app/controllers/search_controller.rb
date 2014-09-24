class SearchController < ApplicationController

  def new
    @search = params[:search]
    @results = Book.find_by_title(search)

    render json: @search
  end

  def create
    # use this to send json to be used in ajax,
    # can then append results to page
  end

  def show
  end
end
