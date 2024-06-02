Rails.application.routes.draw do
  resources :dealers, only: :index
end
