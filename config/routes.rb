Rails.application.routes.draw do
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

    #root page is 'index'
    root to: 'home#show'

    get 'home', to: 'home#show'

    get 'about', to: 'about#show'

end
