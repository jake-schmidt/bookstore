Rails.application.routes.draw do

  # root 'books#index' 
  
  get "/" => 'books#index'

  get "/login" => "sessions#new"
  get "/sessions/create" => 'sessions#create'
  get "/logout" => "sessions#destroy"
  
  get "/books" => "books#index"
  get "/books/new" => "books#new"
  get "/books/create" => "books#create"
  get "/books/:id/delete" => "books#destroy"
  get "/books/:id" => "books#show"
  get "/books/:id/edit" => "books#edit"
  get "/books/:id/update" => "books#update"
  
  get "/users" => "users#index"
  get "/users/new" => "users#new"
  get "/users/create" => "users#create"
  get "/users/:id/delete" => "users#destroy"
  get "/users/:id" => "users#show"
  get "/users/:id/edit" => "users#edit"
  get "/users/:id/update" => "users#update"
  
  
end
