# frozen_string_literal: true

class ProductsController < ApplicationController
   before_action :authenticate_user!

  def index
    @products = Product.all.decorate
    @order_item = current_order.order_items.new
  end
end
