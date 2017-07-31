Rails.application.routes.draw do
  resources :messages
  resources :slides
  resources :people
  resources :languages
  resources :skills
  resources :interests
  resources :publications
  resources :courses
  resources :projects
  resources :honors
  resources :educations
  resources :jobs
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root to: 'home#show'

    get 'home', to: 'home#show'

    get 'about', to: 'about#show'

    get 'login', to: 'login#show'

    get 'contact', to: 'contact#show'
   
    get 'contact/success', to: 'contact#show_success'

    post 'login', to: 'login#login'

    post 'logout', to: 'login#logout'

    post 'contact', to: 'contact#send_email'
end
