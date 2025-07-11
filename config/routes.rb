Rails.application.routes.draw do
  get 'home/index'
  #root "home#index"
  devise_for :users, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations',
  passwords: 'users/passwords',
  confirmations: 'users/confirmations',
  unlocks: 'users/unlocks'
}
  root 'wineries#index'

  resources :wineries, only: [:index, :show] do
    resource :saved_winery, only: [:create, :destroy]
  end
  get '/my_wineries', to: 'users#favorites'

  get "up" => "rails/health#show", as: :rails_health_check

end

