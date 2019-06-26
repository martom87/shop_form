# frozen_string_literal: true

class OrderItemsController < ApplicationController

  def create
    OrderItems::CreateService.new(params, current_order, current_user, session).call
  end

  def update
    OrderItems::UpdateService.new(params, current_order).call
  end

  def destroy
    OrderItems::DestroyService.new(params, current_order).call
  end

end
