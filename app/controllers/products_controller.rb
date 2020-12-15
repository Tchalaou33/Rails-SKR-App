class ProductsController < ApplicationController

    def new
        @product = Product.new
        # @product.build_routine
    end 

    def create
        @product = Product.create(product_params)
        @product.user_id = session[:user_id]
        if @product.save
            redirect_to product_path(@product)
        else
            render :new
        end
    end
   
    def index
        @product = Product.all do |p|
    end

     private

    def product_params
        params.require(:product).permit(:name, :content, :prouduct_id, 
            product_attributes: [:name])
    end

end
