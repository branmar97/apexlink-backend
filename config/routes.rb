Rails.application.routes.draw do
  get '/current_user', to: 'current_user#index'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :lobbies, only: [:index, :show, :create, :destroy] do
    resources :requests, only: [:index]
  end
  resources :requests, only: [:create, :destroy]
end