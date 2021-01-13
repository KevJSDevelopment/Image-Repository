class PhotosController < ApplicationController

    def search
        photos = Photos.where("name LIKE '%#{params[:search]}%'")

        if photos
            render json: {
                photos: photos,
                auth: true,
                message: "Photos found"
            }
        else
            render json: {
                auth: false,
                message: "photos could not be found"
            }
        end
    end

    def create
        photo = Photo.new(image: params[:image])
    end

    def show
        photo = Photo.find(params[:id])
    end

end
