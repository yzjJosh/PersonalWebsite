class AboutController < ApplicationController
  before_action :store_return_to

    def show
        @slides = Slide.all
        @person = Person.all[0]
    end

end
