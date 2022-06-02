Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  get 'lists/:id/add_movie', to: 'lists#add_movie', as: 'add_movie'
  post 'lists/add_movie', to: 'lists#save_movie', as: 'save_movie'
  resources :lists, only: %i[show new create] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]
end
