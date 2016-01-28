Rails.application.routes.draw do
  resources :todos
  root 'application#index'
end
