Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get 'pages/onboarding', to: 'pages#onboarding', as: :onboarding

  resources :requests, only: [:index, :show, :edit, :update]
  resources :lawyers do
    resources :requests, only: [:new, :create]
    resources :reviews, only: [:index]
  end

  resources :cases, only: [:index, :show, :edit, :update] do
    resources :reviews, only: [:new, :create]
  end

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
end



# lawhero.fr/user/id/lawyer/id/requests/new
# lawhero.fr/user/id/requests = index
# lawhero.fr/user/id/requests/id = show
# lawhero.fr/user/id/requests/id/edit = edit
# lawhero.fr/user/id/requests/id/cases = create (post)
# lawhero.fr/user/id/cases = index
# lawhero.fr/user/id/cases/id = show
# lawhero.fr/user/id/cases/id/edit = edit
# lawhero.fr/user/id/cases/id/conversations = index
# lawhero.fr/user/id/cases/id/conversations/id = show
# lawhero.fr/user/id/lawyers/id/reviews = index
# lawhero.fr/user/id/cases/id/reviews/new = new
