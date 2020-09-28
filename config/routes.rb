Rails.application.routes.draw do
  devise_for :users
  resources :foods
  resources :users
  root to: "foods#index"
end
