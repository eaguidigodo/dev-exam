Rails.application.routes.draw do
  root to: 'property_lists#index'
  resources :property_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
