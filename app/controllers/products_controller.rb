class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new # needed to instantiate the form_for
  end

end
