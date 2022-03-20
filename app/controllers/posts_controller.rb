class PostsController < ApplicationController

  def new
  end

  def create
  end

  def index
  end

  def show
    @post = Post.find(params[:id])
    @user = @comment.user
    @comment = Comment.find(params[:id])
  end

  def edit
  end

  def update
  end

  private
  def posts_params
    params.require(:post).permit(:title, :post, :image_id)
  end

end
