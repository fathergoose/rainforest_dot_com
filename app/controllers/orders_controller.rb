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
  end
end
