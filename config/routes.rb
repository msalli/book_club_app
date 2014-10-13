Rails.application.routes.draw do

  root "books#index"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/logout", to: "sessions#destroy" #to be deleted before production
  get "/signup", to: "users#new"

  # post "/books/:book_id/comments/:id", to: "comments#create", :as => "book_comment"

  resources :users
  resources :search


  resources :books do
    resources :favorites
    resources :comments
  end

end
