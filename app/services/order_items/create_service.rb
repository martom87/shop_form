module OrderItems
  class CreateService < BaseService

    attr_accessor :current_user, :session

    def initialize(params = {}, current_order, current_user, session)
      super(params, current_order)
      @current_user = current_user
      @session = session
    end

    def call
      create
    end


    private

    def create
      order = current_order
      order_item_params = params.require(:order_item).permit(:quantity, :product_id)
      order_item = order.order_items.new(order_item_params)
      order.save
      user_order = current_user.user_orders.new(order_id: order.id)
      current_user.order_items << order_item
      user_order.save
      session[:order_id] = order.id
    end

  end
end

