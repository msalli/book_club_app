class Book < ActiveRecord::Base

  require 'active_support/core_ext/hash/conversions'

  has_many :favorites
  has_many :users, through: :favorites
  has_many :comments, as: :commentable, dependent: :destroy


  validates :title,
    :presence => true

  validates :author,
    :presence => true

  validates :description,
    :presence => true


  # amazon request method
  def self.amazon_request(book)
    request = Vacuum.new('US')

    request.configure(
      aws_access_key_id:     ENV['AMAZON_ACCESS_KEY'],
      aws_secret_access_key: ENV['AMAZON_SECRET'],
      associate_tag:         ENV['ASSOCIATE_TAG']
    )

    params = {
      'SearchIndex' => 'Books',
      'Keyword' => book,
      'IncludeReviewsSummary' => false,
      'MerchantId' => 'Amazon',
      'ResponseGroup' => 'Medium'
    }

    response = request.item_search(query: params)

    hash = Hash.from_xml(response.body)
    ap hash

  end


end
