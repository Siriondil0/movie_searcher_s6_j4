Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movie
  get '/show', to: 'movie#show'
  root 'movie#index' 
end
