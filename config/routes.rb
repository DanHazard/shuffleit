Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :players, only: [:index, :show, :new, :create]
  resources :teams, only: [:index, :show, :new]
  resources :leagues, only: [:show]
  resources :matches 
end

