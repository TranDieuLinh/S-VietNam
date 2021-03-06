Rails.application.routes.draw do
  resources :image_comments
  get 'password_resets/new'

  get 'password_resets/edit'

  resources :votes
  resources :likes
  resources :kuchikomis
  resources :meibutus
  resources :profiles
  resources :images
  get 'sessions/new'

  root 'sessions#new'

  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
