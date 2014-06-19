class ImagesController < ApplicationController
  def index
    @user = current_user
    if params[:tag].present?
      @images = Image.where(tag: params[:tag]).paginate(page: params[:page], per_page: '12')
    else
      @images = Image.paginate(page: params[:page], per_page: '12')
    end
  end

  def new
    @user = current_user
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
      :tag
    )
  end
end
