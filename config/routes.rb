Rails.application.routes.draw do

  root 'items#index'
  resources :items
  devise_for :users

end
