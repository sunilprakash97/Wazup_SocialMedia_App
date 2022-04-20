Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users,
  path: '',
  path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
  controllers: {registrations: 'registrations'}
  
  resources :users, only: [:index, :show]

  resources :posts, only: [:index, :show, :create, :destroy ] do
    resources :photos, only: [:create]
    resources :likes, only: [:create, :destroy], shallow: true
    resources :comments, only: [:index, :create, :destroy], shallow: true
    resources :bookmarks, only: [:create, :destroy], shallow: true
  end

  namespace :api, default: { format: 'json' } do
    get 'posts/search', to: 'posts#search'
    resources :posts
  end

  namespace :api do
    namespace :v1 do

      post 'login', to: 'sessions#login', as: "login"
      post 'refresh_token', to: 'sessions#refresh_token', as: "refresh_token"
      delete 'logout', to: 'sessions#logout', as: "logout"

      resources :posts
    end
  end

end 
