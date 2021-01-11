class PhotosController < ApplicationController

    def search
        photos = Photos.where("name LIKE '%#{params[:search]}%'")
    end

    def create
        photo = Photo.new(image: params[:image])
    end

    def show
        photo = Photo.find(params[:id])
    end

end
