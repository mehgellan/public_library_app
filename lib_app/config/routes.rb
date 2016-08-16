Rails.application.routes.draw do
  root to: "users#index"

  get "/users" => "users#index", as: "users"
  get "/users/new" => "users#new", as: "new_user"
  post "/users" => "users#create"
  get "/users/:id" => "users#show", as: "user"

  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"
  post "/sessions" => "sessions#create"

  get "/libraries" => "libraries#index", as: "libraries"
  get "/libraries/new" => "libraries#new", as: "new_library"
  post "/libraries" => "libraries#create"
  get "/libraries/:id" => "libraries#show", as: "library"
  get "/libraries/:id/edit" => "libraries#edit", as: "edit_library"
  patch "/libraries/:id" => "libraries#update"
  delete "/libraries/:id" => "libraries#destroy"

  get "/users/:user_id/libraries" => "library_users#index", as: "user_libraries"
  post "/libraries/:library_id/users" => "library_users#create", as: "library_user"
end
