Rails.application.routes.draw do

  get 'carts/show'
  root to: 'items#index'
  resources :items
  devise_for :users

end
