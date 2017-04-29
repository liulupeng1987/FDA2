Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get '/home', to: 'welcome#home'
  resources :medicines do
    member do
      post :add
      post :remove
    end
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
    resources :medicines
  end

  resources :usearches

end
