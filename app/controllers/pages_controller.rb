class PagesController < ApplicationController
  def home
  end

  def sign_up
    @user = User.new
  end

  def other_images
    if params[:tag].present?
      @image = Image.joins(:tags).where('tags.name = ?',  params[:tag]).paginate(page: params[:page], per_page: '12')
    else
      @image = Image.find(:all, order: :id, limit: '12').reverse
    end
  end
end
