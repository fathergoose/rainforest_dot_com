class OrdersController < ApplicationController
  def create
    @order = Order.create()
  end
end
