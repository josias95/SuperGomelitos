Rails.application.routes.draw do
  resources :tracings
  resources :services
  resources :events
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #ruta principal
  root to: "homes#index"

  get "homes/contact"
end
