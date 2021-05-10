Rails.application.routes.draw do
  resources :teams
  resources :matches
  resources :positions
  resources :fixtures
  resources :tournaments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
