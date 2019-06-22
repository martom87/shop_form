# frozen_string_literal: true

module OrderItems
  class UpdateService < BaseService
    def call
      update
    end

    private

    def update
      order_item = current_order.order_items.find(params[:id])
      order_item_params = params.require(:order_item).permit(:quantity, :product_id)
      order_item.update(order_item_params)
    end

  end
end
