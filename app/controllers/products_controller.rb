class ProductsController < ApplicationController

  def index
    # @products = Product.all
    @active_home = "active"
    product_ids = Product.select(:id)
    @random_product = product_ids.sample.id
    @products = Array.new
    if params[:sort] == 'price-asc'
      @products = Product.order(price: :asc)
    elsif params[:sort] == 'price-dec'
      @products = Product.order(price: :desc)
    else
      Product.all.each { |product| @products << product }
    end
  end

  def new
    @active_new = "active"
  end

  def create
    @product = Product.create(
      name: params[:name],
      unit_cost: params[:unit_cost],
      price: params[:price],
      image: params[:image],
      description: params[:description]
      )
    flash[:success] = "Your the product has been added to the rainforest"
    redirect_to '/products'
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name],
      unit_cost: params[:unit_cost],
      price: params[:price],
      image: params[:image],
      description: params[:description]
    )
    flash[:info] = "This product has been updated"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.delete
    flash[:warning] = "#{@product.name} has been removed from the rainforest"
    redirect_to '/products'
  end

  # def supplier
  #   @supplier = product.supplier
  # end
  
end
