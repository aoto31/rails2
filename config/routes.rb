Rails.application.routes.draw do
  
  devise_for :users
  resources :rooms do
    collection do
      get "top"
    end
    devise_for :users
  end

  root to: "rooms#top" 

  resources :users
  resources :reservations

end
