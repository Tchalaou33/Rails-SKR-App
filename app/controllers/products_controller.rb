class ProductsController < ApplicationController

    def index
        @product = Product.all do |p|
    end

end
