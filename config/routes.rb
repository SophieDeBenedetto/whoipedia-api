Rails.application.routes.draw do
  
  devise_for :users, controllers: { sessions: 'sessions' }

  namespace :api do
    namespace :v1 do
      resources :seasons, except: [:new, :edit]
      resources :episodes
      resources :writers, except: [:new, :edit]
      get "seasonsmeta/aliens", to: "seasonsmeta#alien_metadata"
      get "users/me", to: "users#me"
      post "users", to: "users#create"
    end
  end
end
