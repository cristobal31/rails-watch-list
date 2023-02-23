Rails.application.routes.draw do
  # get 'bookmarks/index'
  # get 'bookmarks/show'
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  # get 'lists/index', to: 'lists#index'
  # get 'lists/show', to: 'lists#show'
  # get 'lists/new', to: 'lists#new'

  get "/bookmarks", to: "bookmarks#index"
  post "/bookmarks", to: "bookmarks#create"
  get     "/bookmarks/new", to: "bookmarks#new"
  get     "/bookmarks/:id/edit", to: "bookmarks#edit"
  get     "/bookmarks/:id", to: "bookmarks#show"
  patch   "/bookmarks/:id", to: "bookmarks#update"
  delete  "/bookmarks/:id", to: "bookmarks#destroy"

  get "/lists", to: "lists#index"
  post "/lists", to: "lists#create"
  get     "/lists/new", to: "lists#new"
  get     "/lists/:id/edit", to: "lists#edit"
  get     "/lists/:id", to: "lists#show"
  patch   "/lists/:id", to: "lists#update"
  delete  "/lists/:id", to: "lists#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

end
