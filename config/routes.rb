Rails.application.routes.draw do
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'pages#index'
  resources :users
  resources :gitst, only: ['new', 'create', 'show']
end
