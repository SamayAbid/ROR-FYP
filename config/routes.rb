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

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
