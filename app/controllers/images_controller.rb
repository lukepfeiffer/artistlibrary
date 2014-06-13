class ImagesController < ApplicationController
  def index
    @user = current_user
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to images_path
    else
      redirect_to new_image_path
    end
  end

  def image_params
    params.require(:image).permit(
      :url,
      :description,
      :tag
    )
  end
end
