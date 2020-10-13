class PagesController < ApplicationController
  def home
  end

  def top_product
    @products = Product.all
    if @product > 1
      @product = Product.last
    end
  end
end
