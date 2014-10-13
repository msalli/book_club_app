class Comment < ActiveRecord::Base

  belongs_to :commentable, polymorphic: true

  # comments on comments
  has_many :comments, as: :commentable, dependent: :destroy


  validates :body,
    :presence => true


end
