Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users, :controllers => { registrations: 'registrations' }

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :movies, only: [:show, :index] do 
    post :watchlist, on: :member
    delete :unwatchlist, on: :member
  end

  resources :users, only:[:show] do
    get :watchlists, on: :member
  end

  resources :categories, only: [:show, :index]

  root 'movies#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
