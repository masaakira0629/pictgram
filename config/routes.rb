Rails.application.routes.draw do
  get 'topics/index'
  get 'topics/show'
  get 'topics/new'
  get 'sessions/new'

  get 'comment/new'

  root 'pages#index'
  get 'pages/help'

  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :topics
  resources :comments, only: [:new, :create]


  get   'favorites/index'
  post   '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
end
