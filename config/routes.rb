# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'questions#home', as: :home

  get 'ask', to: 'questions#ask', as: :ask

  get 'answer', to: 'questions#answer', as: :answer
end
