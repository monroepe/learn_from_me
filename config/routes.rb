Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  resources :subjects, only: [:index, :show]

  resources :courses
end
