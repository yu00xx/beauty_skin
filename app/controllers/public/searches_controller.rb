class Public::SearchesController < ApplicationController
  def search
    #@word = params[:content]
    #@posts = Post.where("category LIKE?","%#{@word}%")
   # render "public/searches/search"
   @posts = Post.all
   @categories = Category.all
   @category = Category.find(params[:category_id])
   @category_posts = Category.posts
  end
end
