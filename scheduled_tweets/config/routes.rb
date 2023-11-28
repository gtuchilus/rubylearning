Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: "main#index"

  # Get /about page
  get "about", to: "about#index", as: :about

  # Sign-up page
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  # Log in page
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  # Log out page
  delete "logout", to: "sessions#destroy"

  # Password update
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  # Password reset
  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"

end
