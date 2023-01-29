Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get '/member_details' => 'members#index'
  get '/prefectures' => 'members#index'


  get '/building_scrape' => 'buildings#scrape'

  resources :reviews
  resources :buildings
end
