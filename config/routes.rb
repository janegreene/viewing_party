Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/auth/google_oauth2/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')

  get '/dashboard', to: 'dashboard#show'
  get '/logout', to: 'sessions#destroy'
  post '/friendships', to: 'friendships#create'
  get '/discover', to: 'discover#index'
  get '/movies', to: 'movies#index'
end
