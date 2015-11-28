class ImagesController < ApplicationController
  def new
  end
  def create
    @image = Image.create(
      product_id: params[:product_id],
      url: params[:url],
      fallback_text: params[:fallback_text]
    )
    redirect_to "/products/#{params[:prodcut_id]}"
  end
end
