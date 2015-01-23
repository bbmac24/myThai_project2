class CommentsController < ApplicationController

  def new
  	@comment = Comment.new
  end 

  def create
    @comment = Comment.new(params.require(:comment).permit(:body))
    @comment.thaifood = Thaifood.find(params[:thaifood_id])
    @comment.user = current_user 
    @comment.save
    redirect_to @comment.thaifood
  end

end
