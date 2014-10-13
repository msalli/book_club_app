Rails.application.routes.draw do

  root "books#index"

  get "/login", to: "sessions#new"

  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

  get "/logout", to: "sessions#destroy" #to be deleted before production

  get "/signup", to: "users#new"

  post "/books/:book_id/comments", to: "comments#create", :as => "book_comments"
  post "/comments/:id/children", to: "comments#create_child"


  resources :users
  resources :search
  resources :comments

  resources :books do
    resources :favorites
  end

end
