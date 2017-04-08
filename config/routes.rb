Rails.application.routes.draw do
  devise_for :users
  root 'manufacturers#index'
  resources :manufacturers do
    collection do
      get :search
    end
  end
end
