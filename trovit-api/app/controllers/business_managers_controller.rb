class BusinessManagersController < ApplicationController

    def index
        company = Company.showEmployees(1)
        render json: company, status: 200
    end


end
