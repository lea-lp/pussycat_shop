Rails.application.routes.draw do

  root to: 'items#index'
  get '/profile', to: 'user_profiles#show', as: 'profile'
  get '/profile/edit', to: 'user_profiles#edit', as: 'edit_profile'
  get "/carts/:cart_id/items/:item_id", to: "carts#add", as: :item_cart
  post "/carts/:cart_id/items/:item_id", to: "carts#change_quantity", as: :item_quantity
  delete "/carts/:cart_id/items/:item_id", to: "carts#destroy"

  resources :items, except: [:create, :new]
  get "payment", to: 'charges#new', as: :new_charge
  post "confirmation", to: 'charges#create', as: :charges

  get "my_cart", to: "carts#show", as: :cart_show
  resources :orders, only: [:create, :show]
  devise_for :users

end
