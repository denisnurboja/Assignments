Rails.application.routes.draw do
  root 'movies#index'
  get 'search' => 'movies#search'
end
