Rails.application.routes.draw do
  root 'items#index'
  resource :items
end
