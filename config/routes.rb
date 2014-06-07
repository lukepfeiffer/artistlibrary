Artistlibrary::Application.routes.draw do
  resources :users

  root 'pages#home'

  get '/sign_up', to: 'pages#sign_up'
  get '/about', to: 'pages#about'


  post 'sessions', to: 'sessions#create'

  delete '/sign_out', to: 'sessions#destroy'
end
