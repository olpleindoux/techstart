class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @product = Product.find(params[:product_id])
  end

  def create
    @review = Review.new(review_params)
    @product = Product.find(params[:product_id])
    @review.product = @product

    if @review.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def destroy
    @review = review.find(params[:id])
    @review.destroy

    redirect_to product_path(@review.product)
  end

  private

  def review_params
    params.require(:review).permit(:content, :vote)
  end
end
