Rails.application.routes.draw do
  devise_for :users
  root to: "toppages#index"

  resources :tags do
    collection do
      get :search
    end
  end
end
