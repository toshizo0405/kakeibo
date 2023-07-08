Rails.application.routes.draw do
  get "/books", to: "books#index"
  post "/books" , to: "books#create"
  get "/books/new", to: "books#new", as: "new_book"
  get "/books/:id",  to: "books#show", as: "book"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
