# frozen_string_literal: true

Rails.application.routes.draw do
  resources :cookies
  # RESTful routes
  resources :cookies, except: %i[new edit]
  resources :cookies, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'cookies#signup'
  post '/sign-in' => 'cookies#signin'
  delete '/sign-out' => 'cookies#signout'
  patch '/change-password' => 'cookies#changepw'
end
