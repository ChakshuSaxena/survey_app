Rails.application.routes.draw do
  resources :surveys, only: [:new, :create]
  root 'surveys#new'
end
