class WhitelistConstraint
  def initialize
    # whitelist ip address for database access
    @ips = ['127.0.0.1', '52.52.173.222'] 
  end
 
  def matches?(request)
    @ips.include?(request.remote_ip)
  end
end

Rails.application.routes.draw do
    resources :people, :constraints => WhitelistConstraint.new
    resources :languages, :constraints => WhitelistConstraint.new
    resources :skills, :constraints => WhitelistConstraint.new
    resources :interests, :constraints => WhitelistConstraint.new
    resources :publications, :constraints => WhitelistConstraint.new
    resources :courses, :constraints => WhitelistConstraint.new
    resources :projects, :constraints => WhitelistConstraint.new
    resources :honors, :constraints => WhitelistConstraint.new
    resources :educations, :constraints => WhitelistConstraint.new
    resources :jobs, :constraints => WhitelistConstraint.new
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    #root page is 'index'
    root to: 'home#show'

    get 'home', to: 'home#show'

    get 'about', to: 'about#show'

end
