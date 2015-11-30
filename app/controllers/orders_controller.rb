class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  def create
    @order = Order.create(
    quantity: params[:quantity],
    user_id: params[:user_id],
    product_id: params[:product_id]
    )
    redirect_to "/orders/#{@order.id}"
  end
  def show
    @order = Order.find_by(id: params[:id])
  end
end
