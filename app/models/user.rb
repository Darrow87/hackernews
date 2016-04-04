class User < ActiveRecord::Base
  has_secure_password
  has_many :comments
  has_many :posts

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :email, presence: true
  validates :password, presence: true
end
