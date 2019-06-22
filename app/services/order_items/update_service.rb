# frozen_string_literal: true

module OrderItems
  class UpdateService < BaseService
    def call(order, order_item)
      # update(order, order_item)
      order = current_order
      order_item = order.order_items.find(params[:id])
      order_item.update(order_item_params)
      order_items = order.order_items
    end
  end

  private

  def update(order, order_item)
    order = current_order
    order_item = order.order_items.find(params[:id])
    order_item.update(order_item_params)
    order_items = order.order_items
  end
end
