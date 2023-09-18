class Admin::CommentsController < ApplicationController

  def index
    @comments = Comment.page(params[:page]).per(10)
    #@post = @comments.post_id
    #@user = @comments.user_id
  end

  def destroy
  end
end
