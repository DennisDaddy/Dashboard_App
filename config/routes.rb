Rails.application.routes.draw do

  resources :weathers
  resources :websites
	root 'dashboard#index'
  get 'dashboard/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
