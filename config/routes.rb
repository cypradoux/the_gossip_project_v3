Rails.application.routes.draw do

  resources :the_gossip_project
  resources :users
  resources :city
  resources :sessions, only:[:new, :create, :destroy]

  # get 'the_gossip_project/home'

  get '/contact', to: 'the_gossip_project#contact'

  get '/team', to: 'the_gossip_project#team'

  # get 'the_gossip_project/:first_name', to: 'the_gossip_project#welcome'

  # get 'the_gossip_project/home/:id', to: 'the_gossip_project#one_gossip', as: :gossipp

  
  get "up" => "rails/health#show", as: :rails_health_check

  
end
