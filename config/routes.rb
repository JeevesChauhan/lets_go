Rails.application.routes.draw do

  # Can remove self from list if mind changes. There is no need to edit anything
  resources :going_to_raids, except: [:edit, :update]

  # Once its public it cannot be removed.
  resources :plan_raids, except: [:destroy]
  resources :spot_raids, except: [:destroy]
  resources :poke_events, except: [:destroy]

  # Land_marks and Pokemon can only be viewed. Everything else is done by the website owner
  resources :land_marks, only: [:index]
  resources :pokemons, only: [:index]

  # Devise being devise. I won't touch this
  devise_for :users

  # Root for devise
  root 'lets_go#home'
  # Looks more appealing that 'lets_go/about'
  get '/about', to: 'lets_go#about'

  get '/contact', to: 'lets_go#contact'
  post 'request_contact', to: 'lets_go#request_contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
