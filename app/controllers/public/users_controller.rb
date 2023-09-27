class Public::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page])
    @like_posts = @user.like_posts
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.email == 'guest@example.com'
      redirect_to root_path, notice: 'ゲストユーザーの更新・削除はできません。'
    else
      @user.update(user_params)
      redirect_to user_path(@user.id)
    end
  end

  def confirm_withdraw
    @user = current_user
  end

  def withdraw
    @user = current_user
    if @user.email == 'guest@example.com'
      redirect_to root_path, notice: 'ゲストユーザーの更新・削除はできません。'
    else
      @user.update(is_deleted: true)
      @user.posts.delete_all
      reset_session
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:profile_image, :name, :gender, :email, :skin_type)
  end
end
