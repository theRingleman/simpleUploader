Rails.application.routes.draw do
  resources :photos, only: [:new, :create, :index, :destroy]

  root to: 'photos#index'
end
