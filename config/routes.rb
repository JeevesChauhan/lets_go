Rails.application.routes.draw do
  devise_for :users
  root 'lets_go#home'
  get 'lets_go/home'
  get 'lets_go/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
