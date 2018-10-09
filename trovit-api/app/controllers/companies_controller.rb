class CompaniesController < ApplicationController
    def index
        companies = Company.all
        render json: companies, status: 200
    end
    
    def show
        company = Company.find(params[:id])
        render json: company, status: 200
    end

    def create
        company = Company.new(params_company)
        if company.save
            respond_to do |format|
                format.json {render json: company, status: 201}
            end
        else
            respond_to do |format|
                format.json {render json: company.errors, status: :unprocessable_entity}
            end
        end
    end

    def destroy
        company = Company.find(params[:id])
        company.destroy
        respond_to do |format|
            format.json {render json: company, status:200}
        end
    end

    def update
        company = Company.find(params[:id])
        company.update(params_company)
        if company.update(params_company)
            render json: company, status: 200
        else
            render json: company.errors, status: 422
        end
    end

    def params_company
        params.permit(:name, :location, :companyType)
    end
end
