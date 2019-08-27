# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :products
  resource :cart, only: %i[show]
  resources :order_items, only: %i[create update destroy]
  resources :settings
  root to: 'products#index'
end
