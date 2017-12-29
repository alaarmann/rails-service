Rails.application.routes.draw do
  get 'greeter/index'
  resources :vorgaenge
  root 'greeter#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
