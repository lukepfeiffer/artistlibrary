class User < ActiveRecord::Base
  include Authem::User
  has_many :images
  validates_presence_of :email, :username, :password, :password_confirmation
end
