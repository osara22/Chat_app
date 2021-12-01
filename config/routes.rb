Rails.application.routes.draw do
    root to: 'homes#top'
    
    resources :users, only: [:new, :create]
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    resources :openchats, only: [:index]
    
    resources :rooms, only: [:new, :index, :show, :create, :destroy] do
      resources :messages, only: [:create]
      resources :password_lock, only: [:index, :create]
    end
    
end
