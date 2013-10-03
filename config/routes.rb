HeuroTools::Application.routes.draw do
  resources :services, only: [:new, :show, :index]
  root 'services#index'

  resources :service_creators, only: [:create]
end
