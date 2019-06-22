# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: %i[create update destroy]
  root to: 'products#index'
end
