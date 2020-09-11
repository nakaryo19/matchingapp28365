Rails.application.routes.draw do
  root to: "toppages#index"
  devise_for :users   
  resources :users, :only => [:index, :show]
  
  
  resources :relationships, only: [:create] 
  resources :matching, only: [:index]
  get '/user/like', to: 'matching#like', as: :like
  get '/user/liked', to: 'matching#liked', as: :liked
  
end
