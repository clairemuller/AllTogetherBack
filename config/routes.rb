Rails.application.routes.draw do
  resources :items
  resources :categories
  resources :locations
  resources :rooms
  resources :properties
  resources :users
  get '/users/:id/everything', to: 'users#getEverything'
  get '/users/:id/items', to: 'users#getItems'
  get '/users/:id/rooms', to: 'rooms#show'

  post '/users/:id/items', to: 'items#create'
  post '/users/:id/rooms', to: 'users#addRoom'

  patch '/users/:id/items', to: 'items#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
