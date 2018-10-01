class OrdersController < ApplicationController

    def index 
        order = Order.all
        render json:orders, status:200
    end

    def create 
        order = Order.new(params_offer)
        if order.save
            render json:order, status: 201
        else
            render json:product.errors, status: :unprocessable_entity
        end
    end

    def update
        order = Order.find(params[:offer_id])
        if order.update(params_offfer)
            render json: product, status: 200
        else
            render json: product.errors, status: 422
        end
    end

    def destroy
        
        order = Order.find(params[:offer_id])
        order.destroy
        respond_to do |format|
            format.json {render json: product, status: 200}
        end
    end

    def params_offer
        params.permit(:quantity, :date)
    end

end
