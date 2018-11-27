Rails.application.routes.draw do

  root to: 'items#index'
  get '/profile', to: 'user_profiles#show', as: 'profile'
  get '/profile/edit', to: 'user_profiles#edit', as: 'edit_profile'
  resources :items do
    resources :carts, only: [:edit, :destroy]
  end
  get "cart/show", to: "carts#show"
  resources :orders, only: [:create, :show]
  devise_for :users

end
