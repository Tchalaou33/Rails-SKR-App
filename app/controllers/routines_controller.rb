class RoutinesController < ApplicationController

    def new
        @routine = Routine.new
        
    end


    def create
    end

end

# <%= f.collections_select()