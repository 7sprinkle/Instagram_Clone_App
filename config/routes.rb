Rails.application.routes.draw do
  root 'pictures#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy] do
    get :favorites, on: :collection
  end
  resources :pictures do
    collection do
      post :confirm
    end
  end
end
