class Comment < ActiveRecord::Base

  belongs_to :commentable, polymorphic: true

  # comments on comments
  # has_many :comments, as: :commentable, dependent: :destroy
  has_many :chlidren, class_name: "Comment", foreign_key: "commentable_id", as: :commentable, dependent: :destroy
  belongs_to :parent, class_name: "Comment", foreign_key: "commentable_id"


  validates :body,
    :presence => true


end
