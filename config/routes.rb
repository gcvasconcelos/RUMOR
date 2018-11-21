# frozen_string_literal: true

Rails.application.routes.draw do
  resources :rus
  get 'working_hour', to: 'rus#working_hour', as: '/working_hour' 
  get 'rus/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'rus#index'
end
