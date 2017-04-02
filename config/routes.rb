Rails.application.routes.draw do

  root 'artists#index'
  resources :artists do
    # resources :songs, only: [:new, :create]
    resources :songs, only: [:new]
    end

  # resources :songs, only: [:show]
  # resources :playlists, only: [:index, :create, :new, :show]
end
