Rails.application.routes.draw do
  post 'purchaser', to: 'purchasers#create'
  post 'product', to: 'products#create'
  post 'purchaser_product', to: 'purchaser_products#create'
end
