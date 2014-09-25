class BooksController < ApplicationController
  require 'active_support/core_ext/hash/conversions'

  before_action :set_book, only: [:show]


  def index
    @books = Book.all()
    @book = Book.new

    @search = ""
    # for nav
    @current_user = current_user
  end


  def create
    bookObj = amazon_request(book_params)

    if bookObj
      @book = Book.create(bookObj)
     else
      flash[:notice] = "We couldn't find this book."
    end

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

    hash = Hash.from_xml(response.body)
    # p "This is the large hash", hash

    enterHash = hash["ItemSearchResponse"]["Items"]["Item"]
    ap enterHash
    book = nil

    if enterHash.kind_of?(Hash) == true
      p "CONFIRMED THIS IS A HASH"
      link = enterHash["DetailPageURL"]
      author = enterHash["ItemAttributes"]["Author"]
      title = enterHash["ItemAttributes"]["Title"]
      lg_img = enterHash["LargeImage"]["URL"]

      if !enterHash["EditorialReviews"]["EditorialReview"][0]
        description = enterHash["EditorialReviews"]["EditorialReview"]["Content"]
      else
       description = enterHash["EditorialReviews"]["EditorialReview"][0]["Content"]
      end
      book = {:title => title, :author => author, :description => description, :lg_img => lg_img, :link => link }
    else
      p "THIS IS NOT A HASH"
      if enterHash != nil
        enterHash.each do |res|
          p "THIS IS THE RES", res
            link = res["DetailPageURL"]
            ap link
            if !res["ItemAttributes"]["Author"][0]
              author = res["ItemAttributes"]["Author"]
            else
              author = res["ItemAttributes"]["Author"][0]
            end

            ap author
            title = res["ItemAttributes"]["Title"]
            ap title
            lg_img = res["LargeImage"]["URL"]
            ap lg_img

            if !res["EditorialReviews"]["EditorialReview"][0]
              description = res["EditorialReviews"]["EditorialReview"]["Content"]
            else
              description = res["EditorialReviews"]["EditorialReview"][0]["Content"]
            end
            ap description

            book = {:title => title, :author => author, :description => description, :lg_img => lg_img, :link => link }
          break
        end #end for each do
      end #end for if enter hash is not nil
    end #ending if for confirm type

    book
  end


  def show
    @book

    if current_user
      @this_book = current_user.favorites.find_by_book_id(params[:id])
    end
    @favorite = Favorite.new
    @comment = @book.comments.new

    # for nav
    @current_user = current_user
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
