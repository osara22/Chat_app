Rails.application.routes.draw do
    root to: "homes#top"
    
    resources :openchats, only: [:index]
    
    resources :users, only: [:new, :create]
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    resources :public_rooms, only: [:index, :show, :new, :create, :destroy] do
      resources :messages, only: [:create]
    end
end
