module OrderItems
  class DestroyService < BaseService
    def call
      destroy
    end

    private

    def destroy
      order_item = current_order.order_items.find(params[:id])
      order_item.destroy
    end

  end
end