HeuroTools::Application.routes.draw do
  devise_for :users, except: [:new, :create, :delete, :update]
  resources :services, only: [:new, :show, :index]
  root 'services#index'

  resources :service_creators, only: [:create]
end