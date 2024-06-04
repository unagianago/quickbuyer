Rails.application.routes.draw do
  devise_for :users
  root to: 'dealers#index'
  resources :dealers, only: :index do
    collection do
      get 'search'
    end
  end
  
end

