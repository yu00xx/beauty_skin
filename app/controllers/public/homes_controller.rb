class Public::HomesController < ApplicationController

  def top
    @post = Post.limit(4).order("created_at DESC")
  end

  def about
  end
end
