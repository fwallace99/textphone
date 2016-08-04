Rails.application.routes.draw do
  #get 'sessions/new'

  get 'static_pages/home'

  #get 'static_pages/login'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'



  get 'welcome/index'
  resources :users
  # root 'welcome#index'
  root 'static_pages#home'
  resources :sms,     only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
