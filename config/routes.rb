Rails.application.routes.draw do
  
  root "sessions#new"

  resources :users

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  get 'home', to: 'html_pages#home'

  post 'home', to: 'opinions#create'

  get 'contact', to: 'contacts#new'

  post 'contact', to: 'contacts#create'

end
