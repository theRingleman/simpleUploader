class PhotosController < ApplicationController
  def index
    @photos = Photo.order('created_at')
    respond_to do |format|
      format.html { render :index}
      format.json { render json: @photos }
    end
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:success] = "The photo was added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :title, :profile_image)
  end
end
