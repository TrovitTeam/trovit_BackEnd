class OffersController < ApplicationController

    def index 
        
        offer = Offer.all
        render json:orders, status:200
    end

    def create 
        offer = Offer.new(params_offer)
        if offer.save
            render json:order, status: 201
        else
            render json:product.errors, status: :unprocessable_entity
        end
    end

    def update
        offer = Offer.find(params[:offer_id])
        if offer.update(params_offfer)
            render json: product, status: 200
        else
            render json: product.errors, status: 422
        end
    end

    def destroy

        offer = Offer.find(params[:offer_id])
        offer.destroy
        respond_to do |format|
            format.json {render json: product, status: 200}
        end
    end

    def params_offer
        params.permit(:quantity, :date)
    end



end
