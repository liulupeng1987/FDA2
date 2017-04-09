Rails.application.routes.draw do
  devise_for :users
  root 'medicines#index'
  resources :medicines do
    collection do
      get :search
    end
  end

  resources :manufacturers do
    member do
      post :love
      post :unlove
    end

    collection do
      get :search
    end
  end

  namespace :account do
    resources :manufacturers
  end

  resources :usearches
end
