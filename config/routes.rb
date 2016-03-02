Rails.application.routes.draw do
  
  devise_for :users, controllers: { sessions: 'sessions' }

  namespace :api do
    namespace :v1 do
      resources :seasons, except: [:new, :edit]
      resources :episodes, except: [:new, :edit]
      resources :writers, except: [:new, :edit]
      get "users/me", to: "users#me"
    end
  end
end
