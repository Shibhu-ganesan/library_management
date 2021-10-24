Rails.application.routes.draw do
  devise_for :users
  resources :vendors
  resources :books
  root "books#index"
  get "/search", to:"books#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
