class Public::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page])
    @like_posts = @user.like_posts
  end

  def edit
    @user = User.find(params[:id])
  end
end
