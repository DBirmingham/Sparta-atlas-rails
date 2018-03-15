Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :leaders
  resources :countries
  resources :regions
  root to: 'leaders#home'
end
