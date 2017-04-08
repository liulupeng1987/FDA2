Rails.application.routes.draw do
  devise_for :users
  root 'manufacturers#index'
  resources :manufacturers
end
