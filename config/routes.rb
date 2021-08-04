Rails.application.routes.draw do
  # resources :board_recipes
  # resources :boards
  # resources :recipes
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/users", to: "users#create"
  get "/users", to: "users#index"
  post "/recipes", to: "recipes#create"
  delete "/recipes/:id", to: "recipes#destroy"
  post "/login", to: "users#login"
  get "/me", to: "users#me"

end
