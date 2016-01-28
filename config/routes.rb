Rails.application.routes.draw do
  resources :todos, except: :show
  root 'application#index'
end
