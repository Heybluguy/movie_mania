Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "movies#index"

  resources :movies, only: [:index, :new]
  resources :directors, only: [:new, :create, :index, :show]
end
