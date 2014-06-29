Artistlibrary::Application.routes.draw do
  resources :users
  resources :images

  root 'pages#home'

  get '/other_images', to: 'pages#other_images'


  post 'sessions', to: 'sessions#create'

  delete '/sign_out', to: 'sessions#destroy'
end
