Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :products do
  # get "/products", to: "products#index", as: :products
  # get "/products/:id", to: "products#show", as: :product
  # get "/products/new", to: "products#new", as: :new_product
  # post "/products", to: "products#create"
  # get "/products/:id/edit", to: "products#edit", as: :edit_product
  # patch "/products/:id", to: "products#update"
  # delete "/products/:id", to: "products#destroy"
    resources :reviews, only: [:create, :new, :destroy]
    # or resources :reviews, except: [:edit, :update]
  end
end
