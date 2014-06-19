class PagesController < ApplicationController
  def home
    @user = current_user
  end

  def sign_up
    @user = User.new
  end

  def other_images
    @user = current_user
    @users = User.all
    @image = Image.last
  end

end
