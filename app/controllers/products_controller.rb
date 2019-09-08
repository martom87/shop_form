# frozen_string_literal: true

class ProductsController < ApplicationController

  before_action :set_order_item, only: %i[index show]


  def index
    @search = Product.page(params[:page]).per(8).search(params[:q])
    @products = (@search.result).decorate
  end

  def show
    @product = Product.find(params[:id]).decorate
  end

  private

  def set_order_item
    @order_item = current_order.order_items.new
  end

end
