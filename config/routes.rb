Rails.application.routes.draw do

  root 'items#index'
  resource :items
  devise_for :users

end
