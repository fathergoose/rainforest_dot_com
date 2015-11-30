class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  def create
    if user_signed_in?
    @order = Order.create(
    quantity: params[:quantity],
    user_id: params[:user_id],
    product_id: params[:product_id]
    )
    redirect_to "/orders/#{@order.id}"
    else
      flash[:warning] = "You must sign in before ordering" 
      redirect_to "/users/sign_in"
    end 
  end
  def show
    @order = Order.find_by(id: params[:id])
  end
end
