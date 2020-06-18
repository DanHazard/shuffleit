Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :players
  resources :teams 
  resources :leagues, only: [:index, :show]
  resources :matches

  get '/home', to: 'homes#index'
  get '/home/:id', to: 'homes#index'
  root to: "homes#index"

end

