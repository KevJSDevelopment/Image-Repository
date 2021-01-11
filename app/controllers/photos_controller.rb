class PhotosController < ApplicationController

    def search
        
    end

    def create
        photo = Photo.new(image: params[:image])
    end

    def show
        photo = Photo.find(params[:id])
    end

end
