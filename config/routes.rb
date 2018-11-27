Rails.application.routes.draw do

  root to: 'items#index'
  get "/carts/:cart_id/items/:item_id", to: "carts#add", as: :item_cart
  delete "/carts/:cart_id/items/:item_id", to: "carts#destroy"

  resources :items, except: [:create, :new]
  resources :charges, only: [:create, :new]

  get "cart/show", to: "carts#show"
  resources :orders, only: [:create, :show]
  devise_for :users

end
