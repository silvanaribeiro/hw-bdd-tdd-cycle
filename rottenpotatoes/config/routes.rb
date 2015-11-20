Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  get 'movies/match/:id', to: 'movies#match', as: 'match'
end
