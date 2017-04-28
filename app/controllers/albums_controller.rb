class AlbumsController < ApplicationController
  

  def index
    @albums = current_user.albums
  end

  def new
    @album = Album.new
  end

  def create
     @album = current_user.albums.new(album_params)
     if @album.save
         flash[:notice] = "Successfully created album!"
         redirect_to [:albums]
     else
         render "new"
     end
  end

  def show
    @album = Album.find(params[:id])
    @photo = @album.photos.new
  end

  def edit
  end

  def update
  end

  def destroy
    @album = Album.find(params[:id]).destroy
    redirect_to albums_path(@albums)
    
  end

  private
  def album_params
    params.require(:album).permit(:title, :description)
  end
end
