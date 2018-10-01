class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, status: 200
    end
    
    def show
        user = User.find(params[:id])
        render json: user, status: 200
    end

    def create
        user = User.new(params_user)
        if user.save
            respond_to do |format|
                format.json {render json: user, status: 201}
            end
        else
            respond_to do |format|
                format.json {render json: user.errors, status: :unprocessable_entity}
            end
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        respond_to do |format|
            format.json {render json: user, status:200}
        end
    end

    def update
        user = User.find(params[:id])
        user.update(params_user)
        if user.update(params_user)
            render json: user, status: 200
        else
            render json: user.errors, status: 422
        end
    end

    def params_user
        params.permit(:name, :location, :userType, :phone, :email)
    end

end