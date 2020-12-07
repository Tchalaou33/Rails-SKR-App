class RoutinesController < ApplicationController

    def new
        @routine = Routine.new
    end


    def create
        @routine = Routine.new(routine_params)

        if @routine.save
            redirect_to routine_path(@routine)
        else
            render :new
        end
    end

    # For security 
    private

    def routine_params
        params.require(:routine).permit(:title, :season, :step, :product)
    end
end

