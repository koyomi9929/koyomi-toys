Rails.application.routes.draw do
  root "home#index"
  resources :toys, :test

end
