class Order < ApplicationRecord
  has_many :order_items
  has_many :user_orders, dependent: :destroy
  has_many :users, through: :user_orders

  before_save :update_subtotal

  def subtotal
    order_items.collect {|oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0}.sum
  end

  private

  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end
