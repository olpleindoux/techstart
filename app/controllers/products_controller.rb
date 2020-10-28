class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :update_note, :destroy]
  before_action :format_date, only: [:show, :destroy]
  before_action :format_all_date, only: [:index]

  def index
    @products = Product.all
  end

  def average(product)
    note = []
    product.reviews.each do |review|
      note << review.vote
    end
    (note.inject { |sum, el| sum + el }.to_f / note.size).round(2)
  end

  def show
    # @review = Review.new
    @moyenne = average(@product)
  end

  def new
    @product = Product.new # needed to instantiate the form_for
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render :new
    end
  end

  def edit; end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
    # authorize @product
  end

  def format_date
    @product = Product.find(params[:id])
    @product.release_date = DateTime.parse(@product.release_date).strftime("%m/%Y")
  end

  def format_all_date
    @products = Product.all
    @products.each do |product|
      product.release_date = DateTime.parse(product.release_date).strftime("%m/%Y")
    end
  end

  def product_params
    params.require(:product).permit(:title, :description, :url, :release_date)
  end
end
