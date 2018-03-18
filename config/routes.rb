Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)
  resources :questionnaires
  resources :users
  resources :participants
  resources :invoices
  get '/iec', to: 'iec#index'
  get '/babh', to: 'babh#index'

  resources :entities do
    resources :contacts
  end

  root to: "entities#index"

  get "/terms_of_service", to: "static_pages#terms_of_service", as: :terms_of_service
  get "/terms_of_babh", to: "static_pages#terms_of_babh", as: :terms_of_babh
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
