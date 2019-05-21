Rails.application.routes.draw do
  resources :items
  resources :categories
  resources :locations
  resources :rooms
  resources :properties
  resources :users
  get '/users/:id/everything', to: 'users#getEverything'
  get '/users/:id/items', to: 'users#getItems'
  post '/users/:id/items', to: 'users#addItem'
  post '/users/:id/rooms', to: 'users#addRoom'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
