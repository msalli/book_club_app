class BooksController < ApplicationController
  require 'active_support/core_ext/hash/conversions'

  before_action :set_book, only: [:show]


  def index
    @books = Book.all()
    @book = Book.new
    # for nav
    @current_user = current_user
  end


  def create
   searchAZ = pass_books(book_params)
   bookObj = @myBooks[0]

   @book = Book.create(bookObj)

   redirect_to root_path
  end

   # SEARCHING AMAZON
  def amazon_request(book)
    req = Vacuum.new('US')

    req.configure(
      aws_access_key_id:     ENV["AMAZON_ACCESS_KEY"],
      aws_secret_access_key: ENV["AMAZON_SECRET"],
      associate_tag:         ENV["ASSOCIATE_TAG"]
    )

    params = {
      'SearchIndex' => 'Books',
      'Version' => '2013-08-01',
      'Keywords' => book,
      'IncludeReviewsSummary' => false,
      'MerchantId' => 'Amazon',
      'ResponseGroup' => 'Medium',
      'Sort' => 'salesrank'
    }

    response = req.item_search(query: params)
    p "getting response from AMAZON"

    hash = Hash.from_xml(response.body)
    p "this is the hash!", hash

    enterHash = hash["ItemSearchResponse"]["Items"]["Item"]
    p "this is the enterHash", enterHash

    enterHash.each do |res|
        link = res["DetailPageURL"]
        p "this link", link
        author = res["ItemAttributes"]["Author"]
        p "this is the author", author
        title = res["ItemAttributes"]["Title"]
        p "this is the title", title
        lg_img = res["LargeImage"]["URL"]
        p "this is the image link", lg_img
        # ap res["EditorialReviews"]["EditorialReview"]

        book = {:title => title, :author => author, :lg_img => lg_img, :link => link }
        @myBooks = []

        @myBooks.push(book)
      break
    end
  end

  # PASSING BOOK FROM SEARCH
  def pass_books(books)
    p "passing books"
    books.each do |book|
      amazon_request(book)
    end
  end


  def show
    @book

    @favorite = Favorite.new
    @comment = @book.comments.new
    @this_book = current_user.favorites.find_by_book_id(params[:id])

    # for nav
    @current_user = current_user
  end

  # def update
  #   @book.update(book_params)
  # end

  # def destroy
  #   @book.destroy
  # end

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
