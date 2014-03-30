class ImageController < ApplicationController

def index
  @images = BaseImage.paginate(:page => params[:page], :per_page => 10)
  if params[:popup].blank?
   render :template=>"/image/index" 
  else
  	render :template=>"/image/index" ,:layout=>false
  end
end

def new
 render :template=>"/image/new"
end

 def create
 @image = BaseImage.new(params[:image_form])
 @image.name=params[:image]["name"]
 @image.description=params[:image]["description"]
 @image.caption=params[:image]["caption"]
 @image.save 
 @image.save_image(params[:image_set])
 render :template=>"/image/thanks"
end

end
