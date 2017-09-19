Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root to: 'movie#index'
  get '/movies', to: 'movies#movie_list'
  get '/movies/movie_list' , to:'movies#movie_list'

    resources :movies, :only=> [:show, :create]

end
