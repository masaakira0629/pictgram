Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  resource :users

  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


end
