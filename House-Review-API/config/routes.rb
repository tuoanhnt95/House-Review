Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get '/member_details' => 'members#index'
  get '/building_scrape' => 'buildings#scrape'
  get '/prefectures' => 'prefectures#index'

  resources :reviews
  resources :buildings
end
