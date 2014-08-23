Artistlibrary::Application.routes.draw do
  resources :users
  resources :images
  resources :categories

  root 'pages#home'

  get '/other_images', to: 'pages#other_images'
  get '/pages/category_names', to: 'pages#category_names'


  post 'sessions', to: 'sessions#create'

  delete '/sign_out', to: 'sessions#destroy'
end
