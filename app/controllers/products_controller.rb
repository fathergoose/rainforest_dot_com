class ProductsController < ApplicationController

  def index
    @active_home = "active"
    product_ids = Product.select(:id)
    if @random_product
      @random_product = product_ids.sample.id
    end
    @products = Array.new

    if params[:sort] == 'price-asc'
      @products = Product.order(price: :asc)
    elsif params[:sort] == 'price-dec'
      @products = Product.order(price: :desc)
    else
    @products = Product.all
    #  Product.all.each { |product| @products << product }
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
      description: params[:description]
      )
    #@image = Image.create(
    #  product_id: 
    #)
      
    flash[:success] = "Your the product has been added to the rainforest"
    redirect_to '/products'
  end

  def show
    @product = Product.find_by(id: params[:id])
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
