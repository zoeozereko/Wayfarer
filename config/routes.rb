Rails.application.routes.draw do

  root "welcome#index"

  resources :games
  resources :locations

end
