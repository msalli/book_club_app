class User < ActiveRecord::Base
  has_secure_password

  has_many :favorites
  has_many :books, through: :favorites

  validates :first_name,
    :presence => true

  validates :last_name,
    :presence => true

  validates :email,
    :presence => true,
    :uniqueness => true,
    :format => /\A[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z]+(\.[a-z]{2,4})\z/

  validates :password_digest,
    :presence => true,
    # :confirmation => true,
    :length => { minimum: 8 }, on: :create

  def self.authenticate email, password
    User.find_by_email(email).try(:authenticate, password)
  end



end
