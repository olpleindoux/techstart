Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  # get "/products", to: "products#index", as: :products
  # get "/products/:id", to: "products#show", as: :product
  # get "/products/new", to: "products#new", as: :new_product
  # post "/products", to: "products#create"
  # get "/products/:id/edit", to: "products#edit", as: :edit_product
  # patch "/products/:id", to: "products#update"
  # delete "/products/:id", to: "products#destroy"
  resources :products do
    resources :reviews, only: [:new, :create, :destroy]
  end
  # or resources :reviews, except: [:edit, :update]
end
