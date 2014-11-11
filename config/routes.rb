Rails.application.routes.draw do
  root 'welcome#index'

  resources :subjects, only: [:index, :show]

  resources :subjects, only: [] do
    resources :courses
  end
end
