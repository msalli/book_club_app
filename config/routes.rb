Rails.application.routes.draw do

 root "books#index"

 resources :users
 resources :comments
 resources :books

end
