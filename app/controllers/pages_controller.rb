class PagesController < ApplicationController
  def home
  end

  def sign_up
    @user = User.new
  end

  def other_images
    @image = Image.find(:all, order: :id, limit: '12').reverse
  end
end
