class PicturesController < ApplicationController

    def index

    end

    def show
        picture = Picture.find(params[:id])
        render json: picture, status: 200
    end

    def create 
        product = Picture.new(params_picture)
        if picture.save
            render json:picture, status: 201
        else
            render json:picture.errors, status: :unprocessable_entity
        end
    end

    def update
        picture = Picture.find(params[:id])
        if picture.update(params_picture)
            render json: product, status: 200
        else
            render json: picture.errors, status: 422
        end
    end

    def destroy

        picture = Picture.find(params[:id])
        picture.destroy
        respond_to do |format|
            format.json {render json: picture, status: 200}
        end
    end

    def params_picture
        params.permit(:image)
    end


end
