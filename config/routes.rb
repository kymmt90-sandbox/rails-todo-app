Rails.application.routes.draw do
  resources :todos, except: :show
  root 'todos#index'
end
