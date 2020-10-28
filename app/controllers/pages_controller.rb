class PagesController < ApplicationController
  def home
    @products = Product.all
    # @top = average(@products)
  end

  # def average(products)
  #   all_average = []
  #   note = []
  #   products.each do |product|
  #     if product.reviews.count.positive?
  #       product.reviews.each do |review|
  #         note << review.vote
  #       end
  #       all_average << (note.inject { |sum, el| sum + el }.to_f / note.size).round(2)
  #     end
  #   end
  #   all_average.sort
  # end
end
