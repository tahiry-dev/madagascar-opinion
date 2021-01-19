Rails.application.routes.draw do
  
  root "sessions#new"

  resources :users do
    member do
      get :followings, :followers
    end
  end

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  get 'home', to: 'html_pages#home'

  post 'home', to: 'opinions#create'

  get '/profile/:id', to: 'html_pages#profile', as:'profile'

  resources :followings, only: [:create, :destroy]

  
end
