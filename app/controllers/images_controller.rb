class ImagesController < ApplicationController
  def index
    @images = images.by_tag(tag).by_category(category)
    .paginate(
      page: page,
      order: 'created_at DESC',
      per_page: '15')
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @categories = Image.pluck(:category_name).to_json
    @image = Image.new
    3.times do
      @image.tags.build
    end
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to images_path
    else
      redirect_to new_image_path
    end
  end

  def destroy
    @image = Image.find(params[:id]).destroy
    redirect_to images_path
  end

  private

  def images
    current_user.images
  end

  def category
    params[:category]
  end

  def tag
    params[:tag]
  end

  def page
    params[:page]
  end

  def image_params
    params.require(:image).permit(
      :url,
      :user_id,
      :category_name,
      :category_id,
      :description,
      tags_attributes: :name
    )
  end
end
