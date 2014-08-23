class User < ActiveRecord::Base
  include Authem::User
  has_many :images
  has_many :categories
  validates_presence_of :email, :username, :password, :password_confirmation
  before_save { |user| user.username = user.username.downcase }
end
