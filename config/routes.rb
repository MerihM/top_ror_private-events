Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :events
  root 'events#index'
  resources :attendees, only: [:create, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
