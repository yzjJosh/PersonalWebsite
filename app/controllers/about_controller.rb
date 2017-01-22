class AboutController < ApplicationController

    def show
        @slides = Slide.all
        @person = Person.all[0]
    end

end
