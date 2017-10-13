class WorkoutsController < ApplicationController

    def index
        @workout = Exercise.all
    end

end
