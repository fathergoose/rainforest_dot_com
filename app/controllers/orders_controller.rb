class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  def create
    if user_signed_in?
      @carted_products = CartedProduct.where(user_id: current_user.id, status: "in_cart")
      @sub_total = 0
      @carted_products.each do |product|
        ## assign these an order ID
        quantity = product.quantity
        price = product.product.price
        @sub_total += quantity * price 

        # product.update(status: "ordered", order_id: @order.id)
      end
      @tax = @sub_total * Product::SALES_TAX
      @total = @sub_total + @tax
      order = Order.create(
        user_id: current_user.id,
        sub_total: @sub_total,
        tax: @tax,
        total: @total
      )

      @carted_products.update_all(status: "ordered", order_id: order.id)

      #   @order =   Order.create(
      #    quantity: params[:quantity],
      #    user_id: params[:user_id],
      #    product_id: params[:product_id]
      #    )
      flash[:success] = "Your order has been placed successfully"
      redirect_to "/orders/#{order.id}?order_id=#{order.id}"
    else
      flash[:warning] = "You must sign in before ordering" 
      redirect_to "/users/sign_in"
    end 
  end
  def show
    @ordered_products = CartedProduct.where(order_id: params[:order_id])
    @order = Order.find_by(id: params[:order_id])
  end
end
