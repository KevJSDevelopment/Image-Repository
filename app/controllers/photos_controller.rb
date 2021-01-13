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
        if photo.save
            render json: {
                auth: true,
                message: "Your photos have successfully been saved"
            }
        else    
            render json: {
                auth: false,
                message: photo.errors.full_messages
            }
        end
    end

    def show
        photo = Photo.find(params[:id])
    end

end
