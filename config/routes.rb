Rails.application.routes.draw do
  devise_for :users
  resources :users, except: [:index]

  resources :todos, except: :show do
    member do
      post :toggle_finished
    end
  end

  root 'users#new'
end
