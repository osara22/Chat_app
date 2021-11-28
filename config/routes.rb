Rails.application.routes.draw do
    root to: "homes#top"
    
    resources :openchats, only: [:index]
    
    resources :rooms, only: [:index, :show, :new, :create, :destroy] do
      resources :messages, only: [:create]
    end
end
