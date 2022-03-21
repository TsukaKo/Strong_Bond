class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.new(comment_params)
    comment.save
    redirect_to post_path(@post.id)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@post.id)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post.id)
  end

  private
  def comments_params
    params.require(:comment).permit(:comment)
  end

end
