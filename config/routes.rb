Rails.application.routes.draw do
  get 'home/index'
  #root "home#index"
  devise_for :users
  root 'wineries#index'
  
  resources :wineries, only: [:index, :show]
  get "up" => "rails/health#show", as: :rails_health_check

end
