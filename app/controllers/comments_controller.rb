class CommentsController < ApplicationController
  def create
    comment =Comment.create(comment_params)
    redirect_to "/contents/#{comment.content.id}"
  end
  
  private
  def comment_params
      params.require(:comment).permit(:text).merge(user_id: current_user.id, content_id: params[:content_id])
  end
end
