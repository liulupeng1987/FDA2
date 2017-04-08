Rails.application.routes.draw do
  devise_for :users
  root 'manufacturers#index'
  resources :medicines do
    collection do
      get :search
    end
  end
  
  resources :manufacturers do
    collection do
      get :search
    end
  end
end
