class ScoresController < ApplicationController

    def index
        scores = Score.all
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
        score = Score.new(params_score)

        if score.save 
            render json: score, status:201
        else
            render json: score.errors, status: :unprocessable_entity
        end
    end

    def update
        score = Score.find(params[:id])
        score.update(params_score)
        if score.update(params_score)
            render json: score, status: 200 
        else
            render json: score.errors, status: 422
        end
    end

    def params_score
        params.permit(:score, :product_id, :business_manager_id, :distributor_id)
    end



end
