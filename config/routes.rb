Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :pages, only: [:index, :home]

  resources :messages, only: [:index, :new, :create]

  resources :journals, only: [:show, :index, :new, :create] do
    resources :entries, only: [:index, :new, :create]
  end

resources :entries do
    resources :milestones, only: [:new, :create]
  end

  resources :milestones, only: [:show] do
    resources :pomodoros, only: [:new, :create]
  end


  resources :pomodoros, only: [:show, :update]
  resources :profiles, only: [:show, :edit, :update]
  resources :entries, only: [:show]



   # resources :profile, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
