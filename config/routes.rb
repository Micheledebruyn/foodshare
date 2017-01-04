Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resource :dashboard, only: [:show]

  resources :meals, only: [:index, :show, :new, :create, :edit, :update] do
    resources :reviews, only: [:index, :new, :create]
    resources :orders, only: [:index, :new, :create] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end
