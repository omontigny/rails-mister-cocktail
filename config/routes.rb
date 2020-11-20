Rails.application.routes.draw do
  # get 'pages/home'
  root to: 'cocktails#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :ingredients, only: [:index]
  resources :cocktails, only: [:show, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
end
