Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  get "home" => "home#index"
  resources :toys, :test

end
