Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

 root "books#index"

 get "/signup", to: "users#new"

 resources :users
 resources :comments
 resources :books

end
