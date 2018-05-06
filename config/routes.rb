Rails.application.routes.draw do
  devise_for :users
  resources :line_items
  resources :carts
  resources :products

  root 'shop#index', as: 'shop_index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
