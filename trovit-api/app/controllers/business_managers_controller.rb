class BusinessManagersController < ApplicationController

    #before_action :authenticate_user, only: [:show, :index]

    def index
        businessManagers = BusinessManager.all.paginate(page: params[:page],per_page: 10)
        #BusinessManagers = BusinessManager.selectFive();
        render json: businessManagers, status: 200
    end
    
    def show
        businessManager = BusinessManager.find(params[:id])
        render json: businessManager, status: 200
    end


    def destroy
        businessManager = BusinessManager.find(params[:id])
        businessManager.destroy
        respond_to do |format|
            format.json {render json: businessManager, status:200}
        end
    end

    def update
        businessManager = BusinessManager.find(params[:id])
        businessManager.update(params_BusinessManager)
        if businessManager.update(params_BusinessManager)
            render json: businessManager, status: 200 
        else
            render json: businessManager.errors, status: 422
        end
    end

    def getMessages
    
        businessManager = BusinessManager.find(params[:id])
        messages = BusinessManager.findMessages(businessManager.id)

        render json: messages, status: 200


    end


    def params_BusinessManager
        params.require(:BusinessManager).permit(:user_id)
    end

end
