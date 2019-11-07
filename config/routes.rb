Rails.application.routes.draw do
  resources :songs, only: [:new, :create, :update, :edit, :show, :index]
  resources :genres, only: [:new, :create, :update, :edit, :show, :index]
  resources :artists, only: [:new, :create, :update, :edit, :show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
