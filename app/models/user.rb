# frozen_string_literal: true

class User < ApplicationRecord
  has_many :user_orders
  has_many :orders, through: :user_orders
  has_many :order_items

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
