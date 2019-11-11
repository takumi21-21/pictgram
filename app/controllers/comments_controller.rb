class CommentsController < ApplicationController
  
  def new
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.new
  end
  
  def create
    @topic = Topic.find_by(params[:topic_id])
    @comment = Comment.new(comment_params)
    @comment.topic_id = @topic.id
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to topics_path, success: 'コメントの投稿に成功しました'
    else
      redirect_to topics_path, danger: 'コメントの投稿に失敗しました'
    end
  end
  
  private 
  
  def comment_params
    params.require(:comment).permit(:content, :user_id, :topic_id)
  end
end
