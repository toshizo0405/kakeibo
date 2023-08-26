Rails.application.routes.draw do

  resources :books
  
  
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"

 # get "/books", to: "books#index"
 # post "/books" , to: "books#create"
 # get "/books/new", to: "books#new", as: "new_book"
 # get "/books/:id/edit", to: "books#edit", as: "edit_book"
 # get "/books/:id", to: "books#show", as: "book"
 # patch "/books/:id", to: "books#update"
 # delete "/books/:id", to: "books#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
