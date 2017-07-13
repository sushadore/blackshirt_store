class ProductsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
    @order_items = current_order.order_items
  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
    @products = Product.all
    respond_to do |format|
      format.html
      format.js
    end
  end

end
