Rails.application.routes.draw do
  resources :feeds do
    collection do
      post :confirm
    end
    resources :comments
  end
  resources :users, only: [:index, :new, :create, :show]
  resources :sessions
  resources :relationships, only: [:create, :destroy]
  resources :conversations do
    resources :messages
  end
  root to: 'users#new'
  get '*path', to: 'application#error_404'
end
