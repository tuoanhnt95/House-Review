Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get '/member_details' => 'members#index'
  get '/prefectures' => 'members#index'
  post '/search_house' => 'scraper#scrape', as: 'url'

  resources :reviews
  resources :buildings
end
