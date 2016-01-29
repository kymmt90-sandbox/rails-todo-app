Rails.application.routes.draw do
  resources :todos, except: :show do
    member do
      post :toggle_finished
    end
  end

  root 'todos#index'
end
