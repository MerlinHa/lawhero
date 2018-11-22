Rails.application.routes.draw do

  get 'dashboards/mydashboard'
  devise_for :users
  resources :users, only: [:new, :create, :edit, :update]
  root to: 'pages#home'
  get 'pages/onboarding', to: 'pages#onboarding', as: :onboarding

  resources :lawyers do
    resources :cases, only: [:new, :create]
    resources :reviews, only: [:index]
  end

  resources :cases, only: [:index, :show, :edit, :update] do
    resources :reviews, only: [:new, :create]
    resources :messages, only: [:create]
    member do
      patch "/accept", to: 'cases#accept'
      patch "/refuse", to: 'cases#refuse'
    end
  end

  resources :orders, only: [:show] do
    resources :payments, only: [:new, :create]
  end

  get "/mydashboard", to: 'dashboards#mydashboard'
  get "/all", to:'lawyers#all'

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
