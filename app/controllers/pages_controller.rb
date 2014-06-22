class PagesController < ApplicationController
  def home
    @user = current_user
  end

  def sign_up
    @user = User.new
  end

  def other_images
    @user = current_user
    @image = Image.find(:all, order: :id, limit: '12').reverse
  end
end
