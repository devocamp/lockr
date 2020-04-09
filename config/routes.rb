Rails.application.routes.draw do

  resources :categories do 
    resources :subcategories
  end

  resources :listings

  root 'categories#index'

  match '/help', to: 'pages#help', via: :get
  match '/scams', to: 'pages#scams', via: :get

end