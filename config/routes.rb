Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'bookmarks/index'

  root to: "lists#index"
  resources :lists, except: [:index]

  resources :bookmarks, only: %i[index new create destroy]
end
