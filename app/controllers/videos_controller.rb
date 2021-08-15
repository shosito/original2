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
    
    def destroy
        video = Video.find(params[:id])
        video.destroy
    end
    
    def edit
        @video = Video.find(params[:id])
    end
    
    def update
        video = Video.find(params[:id])
        video.update(video_params)
    end
    
    private
    def video_params
        params.require(:video).permit(:introduction,:title, :video_data).merge(user_id: current_user.id)
    end
end
