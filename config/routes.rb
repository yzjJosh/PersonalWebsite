Rails.application.routes.draw do
  resources :jobs
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    #root page is 'index'
    root to: 'home#show'

    get 'home', to: 'home#show'


end
