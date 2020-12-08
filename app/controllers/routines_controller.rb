class RoutinesController < ApplicationController

    def new
        # check id it's nested & it's a proper id
        if params[:prouduct_id] && product = Product.find_by_id(params[:product_id])
            # nested route
           @routine = product.routines.build
        else
            # unnested
            @routine = Routine.new
        end  
    end


    def create
        @routine = current_user.routines.build(routine_params)

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

    def update
        set_routine
        if @routine.update(routine_params)
            redirect_to routines_path
        else
            render :edit
        end
    end

    def destroy
        set_routine
        @routine.destroy
        redirect_to routines_path
    end


    # For security 
    private

     def set_routine
        @routine = Routine.find_by(id: params[:id])
        if !@routine
            redirect_to routines_path
        end
    end

    def routine_params
        params.require(:routine).permit(:title, :season, :step, :product_id)
    end

   
end

