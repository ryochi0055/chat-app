Rails.application.routes.draw do
  get 'messages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "messages#index"
  devise_for :users
  resources :users, only: [:edit, :update]
end
