class PagesController < ApplicationController
  def home
  end

  def sign_up
    @user = User.new
  end

  def about
  end
end
