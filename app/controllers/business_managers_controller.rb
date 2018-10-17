class BusinessManagersController < ApplicationController

<<<<<<< HEAD
  before_action :authenticate_user, only: [:show, :index]

  def index
      business_managers = BusinessManager.all.paginate(page: params[:page],per_page: 10)
      #business_managers = business_manager.selectFive();
      render json: business_managers, status: 200
  end
  
  def show
      business_manager = BusinessManager.find(params[:id])
      render json: business_manager, status: 200
  end

  def create

      user = User.find(params[:user_id])
      company = Company.last 
      business_manager = BusinessManager.new(user_id: user.id, company_id: company.id)

         if business_manager.save
              respond_to do |format|
                  format.json {render json: business_manager, status: 201}
              end
          else
              respond_to do |format|
                  format.json {render json: business_manager.errors, status: :unprocessable_entity}
              end 
          end
  end

  def destroy
      business_manager = BusinessManager.find(params[:id])
      business_manager.destroy
      respond_to do |format|
          format.json {render json: business_manager, status:200}
      end
  end

  def update
      business_manager = BusinessManager.find(params[:id])
      business_manager.update(params_business_manager)
      if business_manager.update(params_business_manager)
          render json: business_manager, status: 200 
      else
          render json: business_manager.errors, status: 422
      end
  end

  def getMessages
    
    businessManager = BusinessManager.find(params[:id])
    messages = BusinessManager.findMessages(businessManager.id)

    render json: messages, status: 200


end


  def params_business_manager
      params.require(:business_manager).permit(:user_id, :company_id)
  end

end
