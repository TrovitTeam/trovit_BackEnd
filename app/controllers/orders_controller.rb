class OrdersController < ApplicationController

    def index 
        orders = Order.all.paginate(page: params[:page],per_page: 10)
        render json:orders, status:200
    end

    def show
        order = Order.find(params[:id])
        product = Product.find(order.product_id)
        respond_to do |format|
            format.html {render json:order, status: 200}
            format.json {render json: order, status: 200}
            format.pdf do
                pdf = OrderPdf.new(order,product)
                send_data pdf.render, filename: 'orders', type: 'application/pdf',disposition: "inline"
            end
        end


    end

    def create 
        order = Order.new(params_order)
        if order.save
            render json:order, status: 201
        else
            render json:order.errors, status: :unprocessable_entity
        end
    end

    def update
        order = Order.find(params[:id])
        if order.update(params_order)
            render json: order, status: 200
        else
            render json: order.errors, status: 422
        end
    end

    def destroy
        
        order = Order.find(params[:id])
        order.destroy
        respond_to do |format|
            format.json {render json: order, status: 200}
        end
    end

    def params_order
        params.permit(:quantity, :distributor_id, :business_manager_id, :product_id)
    end

end
