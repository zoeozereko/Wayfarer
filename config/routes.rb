Rails.application.routes.draw do

  devise_for :users
  root "welcome#index"

  resources :games
  resources :locations

  resources :users, only: [:index, :show]

end
