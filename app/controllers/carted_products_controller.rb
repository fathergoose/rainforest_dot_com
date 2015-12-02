class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.create(
      user_id: params[:user_id],
      product_id: params[:product_id], 
      quantity: params[:quantity],
      status: "in_cart" ,
    )
    redirect_to "/"
  end
end
