Rails.application.routes.draw do
  resources :going_to_raids
  resources :plan_raids
  resources :spot_raids
  resources :poke_events
  resources :land_marks
  resources :pokemons
  devise_for :users
  root 'lets_go#home'
  get 'lets_go/home'
  get 'lets_go/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
