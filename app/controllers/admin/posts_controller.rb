class Admin::PostsController < ApplicationController

  def index
    @posts = Post.page(params[:page])
    @categories = Category.all
  end

  def show
    @post = Post.find(params[:id])
    @post_user = @post.user
    @comment = Comment.new
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to admin_posts_path
  end

end
