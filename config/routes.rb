Rails.application.routes.draw do

  root 'artists#index'
  resources :artists do
    resources :songs, only: [:new, :create, :show]
  end

  resources :songs, only: [:show]
  resources :playlists, only: [:index, :new, :create, :show]
end
