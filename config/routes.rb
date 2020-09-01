Rails.application.routes.draw do
  resources :signups, only: [:index, :new, :create]
  resources :activities, only: [:index, :new, :create, :show]
  resources :campers, only: [:index, :new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
