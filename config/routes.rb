Rails.application.routes.draw do
  root 'manufacturers#index'
  resources :manufacturers
end
