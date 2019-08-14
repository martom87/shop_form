# frozen_string_literal: true

class ProductsController < ApplicationController


  def index
    @search = Product.page(params[:page]).per(8).search(params[:q])
    @products = (@search.result).decorate
    @order_item = current_order.order_items.new
  end

end
