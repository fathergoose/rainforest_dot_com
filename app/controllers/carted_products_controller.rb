class CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.where(user_id: current_user.id)
  end
  def create
    carted_product = CartedProduct.create(
      user_id: params[:user_id],
      product_id: params[:product_id], 
      quantity: params[:quantity],
      status: "in_cart" ,
    )
    flash[:success]="#{carted_product.product.name} has been added to your cart"
    redirect_to "/carted-products"
  end
end
