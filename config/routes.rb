Rails.application.routes.draw do
  root to: 'pages#index'
  resources :orders
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :line_items
  resources :carts
  resources :products
  resources :charges
  resources :shop
  # root 'shop#index', as: 'shop_index'
  
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
