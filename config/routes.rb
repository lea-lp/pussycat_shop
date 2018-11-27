Rails.application.routes.draw do

  root to: 'items#index'
  resources :items do
    resources :carts, only: [:edit, :destroy]
  end
  get "cart/show", to: "carts#show"
  resources :orders, only: [:create, :show]
  devise_for :users

end
