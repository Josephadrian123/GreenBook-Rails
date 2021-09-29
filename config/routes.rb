Rails.application.routes.draw do
  resources :messages
  resources :plants
  resources :comments
  resources :posts
  devise_for :users
  
    root to: "posts#index"
  get 'profile', to: 'profile#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
