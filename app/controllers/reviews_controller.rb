class ReviewsController < ApplicationController
  # before_action :authorize, only: [:new, :create]


  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(reviews_params)
    if @review.save
      flash[:notice] = "Review has been saved"
      respond_to do |format|
        format.html
        format.js { redirect_to products_path }
      end
    else
      render :new
    end
  end

private
  def reviews_params
    params.require(:review).permit(:author, :content, :rating)
  end
end
