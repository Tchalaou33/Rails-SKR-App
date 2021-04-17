class ProductsController < ApplicationController

    def new
        @product = Product.new
        @product.build_routine
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
        @products = Product.all.alpha
    
        # @products = Product.find_by(id: params[:id])
    end


    # def edit
    #     set_product
    # end
    
    # def update
    #     set_product
    #     if @product.update(prodcut_params)
    #         redirect_to products_path
    #     else
    #         render :edit
    #     end
    # end

     private

    # def set_product
    #     @product = Product.find_by(content: params[:content])
    #     if !@product
    #         redirect_to products_path
    #     end
    # end

    def product_params
        params.require(:product).permit(:name, :content)
    end

end 