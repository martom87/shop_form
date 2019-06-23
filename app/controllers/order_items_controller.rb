# frozen_string_literal: true

class OrderItemsController < ApplicationController
  before_action :set_order_items, only: %i[update destroy]

  def create
    OrderItems::CreateService.new(params, current_order, current_user, session).call
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
