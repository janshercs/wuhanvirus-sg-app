Rails.application.routes.draw do
  root to: 'pages#news'

  get 'news', to: 'pages#news'
  get 'map', to: 'pages#map'
  get 'masks', to: 'pages#masks'

  get '/l/:id' => "shortener#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
