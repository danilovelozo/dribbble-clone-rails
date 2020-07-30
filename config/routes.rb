Rails.application.routes.draw do
  devise_for :users
  root 'shots#index'

  resources :shots do
    resources :comments
    member do
      put 'like', to: 'shots#like'
      put 'unlike', to: 'shots#unlike'
    end
  end
end
