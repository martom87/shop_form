class OrderItemsController < ApplicationController

  def create
    OrderItems::CreateService.new(params, current_order, current_user, session).call
    redirect_to request.referer
  end

  def update
    OrderItems::UpdateService.new(params, current_order).call
    redirect_to request.referer
  end

  def destroy
    OrderItems::DestroyService.new(params, current_order).call
    redirect_to request.referer
  end

end