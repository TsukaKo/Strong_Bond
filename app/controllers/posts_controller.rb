class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    post = Post.new(posts_params)
    post.user_id = current_user.id
    post.save
    redirect_to posts_path
  end

  def index
    group_user_ids = User.where(group_id: current_user.group_id).pluck(:id)
    @posts = Post.where(user_id: group_user_ids)
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(posts_params)
    redirect_to post_path(@post.id)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def posts_params
    params.require(:post).permit(:title, :post, :image)
  end

end
