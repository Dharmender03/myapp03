class PhotosController < ApplicationController
  before_filter :check_album
  def index
  end

  def new
  	@photo = Photo.new
  end

  def create
  	@photo = @album.photos.new(photos_params)
    if @photo.save
      if params[:tags]
        (params[:tags].split(',')).each do |tag|
        @photo.tags.create(title: tag)
        end
      end
      flash[:success] = "The photo was added!"
      redirect_to album_path(@album)
    else
      render 'new'
    end
  end

  def show
  	@photo = Photo.find(params[:id])
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
   # debugger
   @photo = @album.photos.find(params[:id])
    if @photo.update_attributes(photos_params)
      redirect_to album_photo_path(@album, @photo)
    else
      render :edit
    end
  end

  
  def destroy
  	#album=Album.find(params[:album_id])
    @photo = Photo.find(params[:id]).destroy
    redirect_to album_path(@album.id)
  end


 private

 def photos_params
	params.require(:photo).permit(:image)
 end

 def check_album
  
  @album=Album.find(params[:album_id])
 end
end

