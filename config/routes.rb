Rails.application.routes.draw do
  get "match_events/create"
  get "match_events/destroy"
  get "matches/index"
  get "matches/show"
  get "matches/new"
  get "matches/edit"
  root 'matches#index'
  resources :matches do
    resources :match_events, only: [:create, :destroy]
  end
end