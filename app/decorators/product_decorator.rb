class ProductDecorator < ApplicationDecorator
  delegate_all

  def cover
    "http://lorempixel.com/100/150/" +
        %w[food].sample +
        "?a=" + SecureRandom.uuid
  end

end
