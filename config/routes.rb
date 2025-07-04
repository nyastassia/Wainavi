Rails.application.routes.draw do
  root 'wineries#index'
  
  resources :wineries, only: [:index, :show]
  get "up" => "rails/health#show", as: :rails_health_check

end
