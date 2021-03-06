Rails.application.routes.draw do
  root "users#index"

  get "/users" => "users#index", as: "users"
  get "/users/new" => "users#new", as: "new_user"
  get "/users/:id" => "users#show", as: "user"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"
  post "/sessions" => "sessions#create"
end
