class User < ApplicationRecord
  has_many :user_orders
  has_many :orders, through: :user_orders

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
