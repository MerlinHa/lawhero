Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/onboarding', to: 'pages#onboarding', as: :onboarding

  resources :lawyers do
    resources :bookings, only: [:new, :create, :edit, :update, :delete]
  end
  resource :bookings, only: [:show] do
    resources :reviews, only: [:new, :create, :show]
  end
  resources :conversations, only: [:index, :show, :new, :create] do
    resources :messages, only: [:new, :create, :show]
  end

end
