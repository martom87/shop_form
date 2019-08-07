class OrderItemsController < ApplicationController

  before_action :set_order, only: %i[create update destroy]
  before_action :set_order_item, only: %i[update destroy]
  before_action :set_order_items, only: %i[update destroy]


  def create
    @order_item = @order.order_items.new(order_item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to request.referer
  end

  def update
    @order_item.update_attributes(order_item_params)
    redirect_to request.referer
  end

  def destroy
    @order_item.destroy
    redirect_to request.referer
  end


  private

  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end

  def set_order
    @order = current_order
  end

  def set_order_item
    @order_item = @order.order_items.find(params[:id])
  end

  def set_order_item
    @order_item = @order.order_items.find(params[:id])
  end

  def set_order_items
    @order_items = @order.order_items
  end
end