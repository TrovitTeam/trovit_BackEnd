class ProductsController < ApplicationController

    def index
        products= Product.all
        render json:products, status:200
    end

    def create 
        product = Product.new(params_product)
        if product.save
            render json:product, status: 201
        else
            render json:product.errors, status: :unprocessable_entity
        end
    end

    def update
        product = Product.find(params[:product_id])
        if product.update(params_product)
            render json: product, status: 200
        else
            render json: product.errors, status: 422
        end
    end

    def destroy

        product = Product.find(params[:product_id])
        product.destroy
        respond_to do |format|
            format.json {render json: product, status: 200}
        end
    end

    def params_product
        params.permit(:price, :productType, :brand, :productName,:quantity,:description)
    end

    


end
