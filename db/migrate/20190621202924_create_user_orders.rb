# frozen_string_literal: true

class CreateUserOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :user_orders do |t|
      t.string :name, null: false, default: ''
      t.references :user, foreign_key: true, null: false
      t.references :order, foreign_key: true, null: false
      t.timestamps
    end
  end
end
