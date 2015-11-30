Rails.application.routes.draw do

  devise_for :users
  root 'products#index'
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  get 'products/:id' => 'products#show'
  post '/products' => 'products#create'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'
  
  get '/images/new' => 'images#new'
  post '/images' => 'images#create'
  
  get '/orders/:id' => 'orders#show'
  get '/orders' => 'orders#index'
  post '/orders' => 'orders#create'
end
