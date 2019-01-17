class ProductScoresController < ApplicationController

    def index
        scores = ProductScore.all
        if scores
            render json:scores , status: 200
        end
    end

    def show
        product = Product.find(params[:product_id])
        score = product.scores.find(params[:id])
            render json: product, status:200
    end

    def create
        #product = Product.find(params[:product_id])
        #score = product.score.new(params_score)
        score = ProductScore.new(params_score)

        if score.save 
            render json: score, status:201
        else
            render json: score.errors, status: :unprocessable_entity
        end
    end

    def params_score
        params.permit(:score, :product_id, :business_manager_id)
    end



end
