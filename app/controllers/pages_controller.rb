class PagesController < ApplicationController
  def home
  end

  def sign_up
    @user = User.new
  end

  def other_images
    @user = current_user
    @users = User.all
    @image = Image.all
  end

  def about
  end
end
