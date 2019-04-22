Rails.application.routes.draw do
  #get 'artists/index'
  #get 'artists/new'
  #get 'artists/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists

  root 'artists#index', as: :artist_root
end
