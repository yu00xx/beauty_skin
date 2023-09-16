class Admin::UsersController < ApplicationController

  def index
    @users = User.page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page])
    @like_posts = @user.like_posts
  end

  def withdraw
    @user = User.find(params[:id])
    @user.update(is_deleted: true)
    reset_session
    redirect_to admin_users_path
  end
end
