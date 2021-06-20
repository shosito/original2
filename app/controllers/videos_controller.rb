class VideosController < ApplicationController
    def new
        @video = Video.new
    end
    
    def create
        @video = Video.create(titele: video_parmas[:title],  introduction: video_params[:introduction])
    end
    
    private
    def video_params
        params.require(:video).permit(:introduction,:titele, :video)
    end
end
