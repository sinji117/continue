Rails.application.routes.draw do
  devise_for :users
  resources :foods do
    collection do
      get "search"
    end
  end
  resources :users
  root to: "foods#index"
end
