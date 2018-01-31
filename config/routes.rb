Rails.application.routes.draw do
  resources :questionnaires
  resources :users
  resources :participants
  resources :invoices

  resources :entities do
    resources :contacts
  end

  get "/terms_of_service", to: "static_pages#terms_of_service", as: :terms_of_service
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
