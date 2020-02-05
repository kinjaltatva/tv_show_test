Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tvshows#index"
  resources :tvshows, only: [:index] do
    member do
      post :mark_as_favorite
      post :mark_as_unfavorite
    end
  end
end
