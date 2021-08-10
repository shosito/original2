class VideosController < ApplicationController
    def new
        @video = Video.new
    end
    
    def create
        @video = Video.create(video_params)
    end
    
    def show
        @video = Video.find(params[:id])
    end
    
    private
    def video_params
        params.require(:video).permit(:introduction,:title, :video).merge(user_id: current_user.id)
    end
end
