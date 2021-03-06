class Admin::ProductsController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
  before_action :admin_required
  def index
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end
  def new
    @product = Product.new
  end
  def edit
    @product = Product.find(params[:id])
  end
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to admin_products_path
    else
      render :edit
    end
  end
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def destroy
    @product =Product.find(params[:id])
    @product.destroy
    @cart = current_cart
    @cart_item = @cart.cart_items.find_by(product_id: params[:id])
   if @cart_item.blank?
      redirect_to admin_products_path
   else
     @cart_item.destroy
    redirect_to admin_products_path
  end
  end
  private
   def product_params
     params.require(:product).permit(:title, :description, :quantity, :price,:image,:category,:image_path)
   end

end
