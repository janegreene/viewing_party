Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/auth/google_oauth2/callback', to: 'sessions#create'
  get '/auth/failure',                to: redirect('/')
  get '/logout',                      to: 'sessions#destroy'

  get  '/dashboard',   to: 'dashboard#show'
  post '/friendships', to: 'friendships#create'
  get  '/discover',    to: 'discover#index'
  resources :movies, only: [:index, :show]
  resources :view_parties, only: [:new, :create]
  resources :events, only: :create
end
