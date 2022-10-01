Rails.application.routes.draw do


  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    registrations: 'users/registrations' 
  }



  root 'home#index'

  get "/dashboard" , to: "home#dashboard" 
  get "/about" , to: "home#about"
  get "/index" , to: "home#index"
  get "/blog" ,  to: "home#blog"
  get "/contact", to: "home#contact"
  get "/pricing", to: "home#pricing"

  
  resources :activities
  resources :member_activities
  resources :trainer_activities

  namespace :purchase do
    resources :checkouts
  end  

  get "success" , to: "purchase/checkouts#success"

  resources :subscriptions

  resources :webhooks, only: :create

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
