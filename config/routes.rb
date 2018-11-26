Rails.application.routes.draw do

  root to: 'items#index'
  resource :items
  devise_for :users

end
