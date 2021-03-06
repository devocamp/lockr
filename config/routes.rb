Rails.application.routes.draw do

  devise_for :users
  resources :categories do 
    resources :subcategories
  end

  resources :listings do
    collection do
      get 'search'
    end
  end

  root 'categories#index'

  match '/help', to: 'pages#help', via: :get
  match '/scams', to: 'pages#scams', via: :get
  match '/mylistings', to: 'listings#mylistings', via: :get

end