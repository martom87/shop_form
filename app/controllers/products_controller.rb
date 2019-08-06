# frozen_string_literal: true

class ProductsController < ApplicationController


  def index
    @products = Product.paginate(page: params[:page]).decorate
    @order_item = current_order.order_items.new
  end
end
