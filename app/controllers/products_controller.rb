class ProductsController < ApplicationController
  def index
    @products = Product.All
  end
end
