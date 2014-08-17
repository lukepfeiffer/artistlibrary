class PagesController < ApplicationController
  def home
    @user = User.new
  end

  def other_images
    if params[:tag].present?
      @images = Image.joins(:tags).where('tags.name = ?',  params[:tag]).paginate(page: params[:page], per_page: '12')
    else
      @images = Image.find(:all, order: :id, limit: '12', order: 'created_at DESC')
    end
  end
end
