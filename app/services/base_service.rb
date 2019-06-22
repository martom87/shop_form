# frozen_string_literal: true

class BaseService
  attr_accessor :params

  def initialize(params = {})
    @params = params
  end
end
