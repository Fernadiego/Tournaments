Rails.application.routes.draw do
  resources :calendards
  resources :calendars
  resources :calendarios
  get 'generate_fixture/index'
  get 'hello_world', to: 'hello_world#index'
  # get 'main', to: 'main#index'
  root :to => 'main#index'
  resources :teams
  resources :matches
  resources :positions
  resources :fixtures
  resources :tournaments
  resources :generate_fixture
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
