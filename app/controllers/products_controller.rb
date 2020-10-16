class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :destroy]
  before_action :format_date, only: [:index, :show, :destroy]

  def index
    @products = Product.all
  end

  def show; end

  def new
    @product = Product.new # needed to instantiate the form_for
  end

  private

  def set_product
    @product = Product.find(params[:id])
    # authorize @product
  end

  def format_date
    @product = Product.find(params[:id])
    @product.release_date = DateTime.parse(@product.release_date).strftime("%d/%m/%Y")
  end

  def product_params
    params.require(:product).permit(:title, :description, :url, :release_date)
  end
end
