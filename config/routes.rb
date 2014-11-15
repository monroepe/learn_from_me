Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  resources :users, only: [:index, :show] do
    resources :reviews
  end

  resources :subjects, only: [:index, :show]

  resources :courses do
    resources :reviews
  end
end
