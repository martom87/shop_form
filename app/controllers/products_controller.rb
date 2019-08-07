# frozen_string_literal: true

class ProductsController < ApplicationController


  def index
    @products = Product.page(params[:page]).per(8).decorate
    @order_item = current_order.order_items.new
  end
end
