Fish::Application.routes.draw do
  resources :images

  devise_for :users
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  get 'users/:id' => 'users#show'

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # For the dashboard page
  get 'dashboard' => 'welcome#dashboard'
end
