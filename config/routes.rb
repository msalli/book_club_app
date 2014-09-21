Rails.application.routes.draw do

 root "books#index"

 get "/signup", to: "users#new"

 resources :users
 resources :comments
 resources :books

end
