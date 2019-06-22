# frozen_string_literal: true

class BaseService
  attr_accessor :params, :current_order

  def initialize(params = {}, current_order)
    @params = params
    @current_order = current_order
  end
end
