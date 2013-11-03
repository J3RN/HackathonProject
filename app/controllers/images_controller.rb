class ImagesController < ApplicationController
  def index
    @image = Image.all
  end
 
  def show
    @image = Image.find(params[:id])
  end
  
  def new
    @image = Image.new
  end
 
  def create
    
    # build a photo and pass it into a block to set other attributes
    @image = Image.new(image_params) do |t|
      if params[:image][:data]
        t.data      = params[:image][:data].read
        t.filename  = params[:image][:data].original_filename
        t.mime_type = params[:image][:data].content_type
      end
    end
    
    # normal save
    if @image.save
      redirect_to(@image, :notice => 'Your guppie was born!  It\'ll swim freely in the... digital ocean.')
    else
      render :action => "new"
    end
  end
  
  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to(images_url)
  end

  def serve
    @image = Image.find(params[:id])
    send_data(@image.data, :type => @image.mime_type, :filename => "#{@image.name}.jpg", :disposition => "inline")
  end

  def image_params
	params.require(:image).permit!
  end

end