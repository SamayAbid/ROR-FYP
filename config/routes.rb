Rails.application.routes.draw do

  devise_for :trainers
  devise_for :members ,  controllers: {
    sessions: 'members/sessions' ,
    registrations: 'members/registrations'
  }


  


  root 'home#index'

  get "/dashboard" , to: "home#dashboard" 
  get "/about" , to: "home#about"
  get "/index" , to: "home#index"
  get "/blog" ,  to: "home#blog"
  get "/contact", to: "home#contact"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
