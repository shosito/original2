class ContentsController < ApplicationController
    before_action :move_to_index, except: :index
    before_action :set_content, only: [:edit,:show]
    
    def index
        @contents = Content.order("id DESC").page(params[:page]).per(6)
    end
    
    def new
        @content = Content.new
    end
    
    def create
        Content.create(name: content_params[:name], text: content_params[:text], images: content_params[:images], user_id: current_user.id)
    end
    
    def destroy
        content = Content.find(params[:id])
        if content.user_id == current_user.id
           content.destroy
        end
    end
    
    def edit
    end
    
    def update
        # binding.pry
        content = Content.find(params[:id])
        content.update(content_params)
    end
    
    def show
        @comment = Comment.new
        @comments = @content.comments.includes(:user)
    end
    
    private
    def content_params
      params.require(:content).permit(:name, :text, :images)
    end
    
    def set_content
        @content = Content.find(params[:id])
    end
        
    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end
end
