class RoutinesController < ApplicationController

    def new
        # check id it's nested & it's a proper id
        if params[:prouduct_id] && product = Product.find_by_id(params[:product_id])
        #     # nested route
           @routine = product.routines.build #has_many
        else
        #     # unnested
            @routine = Routine.new
            @routine.build_product #belongs_to
        end  

        
        # @routine.build_product
    end


    def create
        @routine = current_user.routines.build(routine_params)
        # @product = current_user.products.build(product_params)
        if @routine.save
            redirect_to routine_path(@routine)
        else
            @routine.build_product unless @routine.product
            render :new
        end
    end

    def index

        if params[:prouduct_id] && product = Product.find_by_id(params[:product_id])
            #nested route
            @routine = product.routines
        else
            @routines = Routine.all
           
        end
    
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
        # params.require(:routine).permit(:title, :season, :step, :product_id)
        # params.require(:product).permit(:name, :content, :prouduct_id, 
        #     product_attributes: [:name])
    
        params.require(:routine).permit(:title, :season, :step, :product_id, product_attributes: [:name, :content])
    end

    # def product_params
    #     params.require(:product).permit(:name, :content) 
    #         # product_attributes: [:name])
    # end
    


   
end

