Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :favorites, only: [:index, :create, :destroy]
  end
  root to: 'dealers#index'
  resources :dealers, only: :index do
    collection do
      get 'search'
    end
  end
  
end

