class FavoriteController < ApplicationController
  def index
    @products = current_user.favorite_products

  end
end
