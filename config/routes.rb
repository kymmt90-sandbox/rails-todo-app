Rails.application.routes.draw do
  devise_for :users

  resources :todos, except: :show do
    member do
      post :toggle_finished
    end
  end

  root 'todos#index'
end
