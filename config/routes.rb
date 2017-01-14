Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    #root page is 'index'
    root to: 'index#index'

    get 'index', to: 'index#index'


end
