Rails.application.routes.draw do

  root to: redirect("/the_gossip_project")

  resources :the_gossip_project
  resources :users
  resources :city
  resources :sessions, only:[:new, :create, :destroy]

  get '/contact', to: 'the_gossip_project#contact'

  get '/team', to: 'the_gossip_project#team'
  
  get "up" => "rails/health#show", as: :rails_health_check

  
end
