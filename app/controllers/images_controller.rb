class ImagesController < ApplicationController
  def index
    if params[:tag].present?
      @images = current_user.images.where(tag: params[:tag]).paginate(page: params[:page], per_page: '12')
    else
      @images = current_user.images.paginate(page: params[:page], per_page: '12')
    end
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

  def destroy
    @image = Image.find(params[:id]).destroy
    redirect_to images_path
  end

  def image_params
    params.require(:image).permit(
      :url,
      :description,
      :tag,
      :user_id
    )
  end
end
