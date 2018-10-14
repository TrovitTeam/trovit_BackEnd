class DistributorsController < ApplicationController

    before_action :authenticate_user, only: [:show, :index]

    def index
        distributors = Distributor.all.paginate(page: params[:page],per_page: 10)
        #distributors = distributor.selectFive();
        render json: distributors, status: 200
    end
    
    def show
        distributor = Distributor.find(params[:id])
        render json: distributor, status: 200
    end

    def create

        user = User.find(params[:user_id])
        distributor = Distributor.new(user_id: user.id)

           if distributor.save
                respond_to do |format|
                    format.json {render json: distributor, status: 201}
                end
            else
                respond_to do |format|
                    format.json {render json: distributor.errors, status: :unprocessable_entity}
                end 
            end
    end

    def destroy
        distributor = Distributor.find(params[:id])
        distributor.destroy
        respond_to do |format|
            format.json {render json: distributor, status:200}
        end
    end

    def update
        distributor = Distributor.find(params[:id])
        distributor.update(params_distributor)
        if distributor.update(params_distributor)
            render json: distributor, status: 200 
        else
            render json: distributor.errors, status: 422
        end
    end


    def params_distributor
        params.require(:distributor).permit(:user_id)
    end

end
