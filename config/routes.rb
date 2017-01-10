Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :playlists, only: [:index, :show] do
    resources :songs, only: [:create]
  end

  # resources :songs, only: [:destroy]
  get '/all_playlists' => "playlists#index"

  root "playlists#index"
end
