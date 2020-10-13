class PagesController < ApplicationController
  # def top_product
  #   @product = Product.last
  #   # if @product > 1
  #   #   @product = Product.last
  #   # end
  # end

  def home
    @products = Product.all
  end
end
