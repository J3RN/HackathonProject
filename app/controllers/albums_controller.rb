class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @album = Album.new
  end

  def create
    @album = current_user.albums.create(album_params)
    @album.save
    redirect_to @album
  end

  def edit
  end

  def update
    @album.update(album_params)
  end

  def destroy
    @album.destroy
  end

  private
    def set_album
      @album = Album.find(params[:id])
    end

    def album_params
      params.require(:album).permit(:title, :user_id)
    end
end
