class Public::LikesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    return redirect_to posts_path if current_user != @user
    @posts = @user.like_posts.page(params[:page])
  end

  def create
    post = Post.find(params[:post_id])
    like = current_user.likes.new(post_id: post.id)
    like.save
    redirect_to post_path(post)
  end

  def destroy
    post = Post.find(params[:post_id])
    like = current_user.likes.find_by(post_id: post.id)
    like.destroy
    redirect_to post_path(post)
  end

end
