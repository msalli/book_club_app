class Book < ActiveRecord::Base

  has_many :favorites
  has_many :users, through: :favorites
  has_many :comments, as: :commentable, dependent: :destroy


  validates :title,
    :presence => true

  validates :author,
    :presence => true

  validates :description,
    :presence => true


end
