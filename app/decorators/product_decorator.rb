class ProductDecorator < ApplicationDecorator
  delegate_all

  def cover
    "http://lorempixel.com/100/150/" +
        %w[food].sample +
        "?a=" + SecureRandom.uuid
  end

  def cover2
    "jelly.jpg"
  end

  def picture_size
    "100x150"
  end

end
