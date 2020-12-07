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

    def index
        @routines = Routine.all
        #  set_routine
    end

    def show
        set_routine
    end

    def edit
        set_routine
    end

    

end

    # For security 
    private

    def routine_params
        params.require(:routine).permit(:title, :season, :step, :product)
    end

    def set_routine
        @routine = Routine.find_by(id: params[:id])
        if !@routine
            redirect_to routines_path
    end
end

