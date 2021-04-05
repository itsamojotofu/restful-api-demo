Rails.application.routes.draw do

  resources :purchasers, only: :create
  resources :products, only: :create
  resources :purchaser_products, only: :create

end
