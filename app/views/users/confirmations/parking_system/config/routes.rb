Rails.application.routes.draw do
  root 'users#show'
  devise_for :users

  resources :users do
    resources :vehicles
  end

  resources :locations do
    resources :slots
  end

  # resources :slots do
  #   resources :park_records
  # end
  #
  # resources :vehicles do
  #   resources :park_records
  # end

end
