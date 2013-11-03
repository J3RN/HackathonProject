class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]
  before_action :set_album_hash, only: [:edit, :new]

  def index
    @images = Image.all
  end

  def show
    @uploader = User.find(@image.user_id)
  end

  def new
    @image = Image.new
  end

  def edit
  end

  def create
    @image = current_user.images.create(image_params)

    if @image.save
      redirect_to @image
    else
      render action: 'new'
    end
  end

  def update
    if @image.update(image_params)
      redirect_to @image, notice: 'Image was successfully updated.'
    else
      render action: 'edit' 
    end
  end

  def destroy
    @image.destroy
    redirect_to images_url 
  end

  private
    def set_image
      @image = Image.find(params[:id])
    end

    def set_album_hash
      @albums = current_user.albums
      @albumsHash = Hash.new
      @albumsHash["None"] = ""
      @albums.each do |album|
        @albumsHash[album.title] = album.id
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:title, :loves, :image, :album_id)
    end
end
