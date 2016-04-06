Rails.application.routes.draw do
  get '/auth/twitter/callback' => 'sessions#create'
  get '/auth/failure' => 'sessions#failure'
  get '/logout' => 'sessions#destroy'

  get "balances/new"
  post "balances/create"

  root :to => 'welcome#index'
end
