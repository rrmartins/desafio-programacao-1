Rails.application.routes.draw do
  get '/auth/twitter/callback' => 'sessions#create'
  get '/auth/failure' => 'sessions#failure'
  get '/logout' => 'sessions#destroy'
  # match '/auth/twitter/callback' => 'sessions#create', via: :get
  # match '/auth/failure' => 'sessions#failure', via: :get
  # match '/logout' => 'sessions#destroy', via: :get

  get "balances/new"
  post "balances/create"

  root :to => 'welcome#index'
end
