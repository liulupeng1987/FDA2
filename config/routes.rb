Rails.application.routes.draw do
  if Rails.env.development?
   mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  devise_for :users, controllers: {
    sessions: "users/sessions" ,
    confirmations: "users/confirmations"
  }
  
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
