class HomeController < ApplicationController

    def show
        @person = Person.all[0]
    end

end
