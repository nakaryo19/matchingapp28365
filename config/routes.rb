Rails.application.routes.draw do
  root to: "toppages#index"
  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords",
  }
  resources :users, :only => [:index, :show]
  
  resources :tags do
    collection do
      get :search
    end
  end
end
