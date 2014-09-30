class SearchController < ApplicationController

  def new
    @search = params[:search]
    @results = Book.where(:title => params[:search])

    render json: @results
    p @results

  end

  def create
    # use this to send json to be used in ajax,
    # can then append results to page
  end

  def show
  end
end
