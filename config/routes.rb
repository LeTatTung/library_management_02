Rails.application.routes.draw do
  namespace :admin do
    root to: "books#index", as: :root
    resources :books, only: [:index, :show]
    resources :users, only: :index
  end

  root "static_pages#show", act: "home"
  get "/pages/:act" => "static_pages#show"

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :users, except: :destroy
  resources :books, only: [:show] do
    resources :comments, only: [:create]
  end
  resources :authors, only: [:show]
end
