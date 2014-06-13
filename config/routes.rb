Artistlibrary::Application.routes.draw do
  resources :users
  resources :images

  root 'pages#home'

  get '/sign_up', to: 'pages#sign_up'


  post 'sessions', to: 'sessions#create'

  delete '/sign_out', to: 'sessions#destroy'
end
