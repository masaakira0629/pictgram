Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/help'

  resource :users
end
