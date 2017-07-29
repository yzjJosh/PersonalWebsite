class HomeController < ApplicationController
  before_action :store_return_to

    def show
        @person = Person.all[0]
    end

end
