# frozen_string_literal: true

class OrderItemsController < ApplicationController
  before_action :set_order_items, only: %i[update destroy]

  def create
    order = current_order
    order_item_params = params.require(:order_item).permit(:quantity, :product_id)
    order_item = order.order_items.new(order_item_params)
    if order.save
      user_order = current_user.user_orders.new(order_id: order.id)
      current_user.order_items << order_item
      user_order.save
    end
    session[:order_id] = order.id
  end

  def update
    OrderItems::UpdateService.new(params, current_order).call
  end

  def destroy
    OrderItems::DestroyService.new(params, current_order).call
  end

  private

  def set_order_items
    @order_items = current_order.order_items
  end

end
