Rails.application.routes.draw do
  devise_for :users
  resources :foods do
    collection do
      get "search"
    end
  end
  resources :users
  root to: "foods#index"
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#new_guest"
  end
  resources :motions
end
