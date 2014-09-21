Rails.application.routes.draw do

  root "books#index"

  get "/login", to: "session#new"

  post "/login", to: "session#create"

  delete "/logout", to: "session#destroy"

  get "/signup", to: "users#new"

  resources :users
  resources :comments
  resources :books

end
