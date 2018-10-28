class ProductsController < ApplicationController

    def index
        distributor = Distributor.find(params[:distributor_id])
        if distributor 
            products = distributor.products
            render json:products , status: 200
        end
    end

    def show
        distributor = Distributor.find(params[:distributor_id])
        product = distributor.products.find(params[:id])
        respond_to do |format| 
            format.json {render json: product, status:200}
        end 
    end

    def create
        distributor = Distributor.find(params[:distributor_id])
        product = distributor.products.new(params_product)
        if product.save 
            respond_to do |format|
                format.json {render json: product, status:201}
            end
        else
            respond_to do |format|
                format.json {render json: product.errors, status: :unprocessable_entity}
            end
        end
    end


    def destroy
        distributor = Distributor.find(params[:distributor_id])
        product = distributor.products.find(params[:id])
        product.destroy
        respond_to do |format|
            format.json {render json: product, status: 200}
        end
    end

    def update
        distributor = Distributor.find(params[:distributor_id])
        product = distributor.products.find(params[:id])
        if product.update(params_product)
            render json: product, status: 200
        else
            render json: product.errors, status: 422
        end

    end

    #Method to Creat Distributor Pictures

    def createPicture

        product = Product.find(params[:id])
        picture = product.pictures.new(params_picture)
            if picture.save 
                respond_to do |format|
                    format.json {render json: picture, status:201}
                end
            else
                respond_to do |format|
                    format.json {render json: picture.errors, status: :unprocessable_entity}
                end
            end
    end

    def showPictures
        
        product = Product.find(params[:id])
        if product
            pictures = user.pictures
            render json:pictures , status: 200
        end

    end

    def params_product
        params.permit(:price, :producType, :brand, :productName,:quantity,:description)
    end

    # Add picture parameters

    def params_picture
        params.permit(:image,:pictureType,:pictureUrl)
    end



 

end
