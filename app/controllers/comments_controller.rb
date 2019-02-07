class CommentsController < ApplicationController
  def new
    @comment =Comment.new
  end

  def create
    @comment = current_user.comments.new(comment_params)
    @comment.topic_id = params[:comment][:topic_id]

    if @comment.save
      redirect_to comments_path success: 'コメントしました'
    else
      flash.now[:danger] = 'コメントに失敗しました'
      render action :new
    end
  end

  private
   def comment_params
     params.require(:comment).permit(:image, :description)
   end
 end
