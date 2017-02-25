class ProductsController < ApplicationController
  before_action :current_user_required
  before_action :validates_search_key, only: [:search]
  def index
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end
  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "你已成功将#{@product.title}加入购物车"
    else
      flash[:warning] = "你的购物车内已有此物品"
    end
      redirect_to :back
  end
  # 2.25 下面是搜索
  def search
  	@products = Product.ransack({:title_or_description_cont => @q}).result(distinct: true)
  end
  protected
  def validates_search_key
  	@q = params[:query_string].gsub(/\\|\'|\/|\?/, "") if params[:query_string].present?
  end
  # 搜索结束
  private
  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price)
  end
end
