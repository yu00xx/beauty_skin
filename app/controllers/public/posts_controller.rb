class Public::PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post.id)
    else
      render :new
    end
  end

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
    redirect_to posts_path
  end

  def search
    @posts = Post.page(params[:page])
    if params[:category].present? #カテゴリで検索された場合
      @posts = @posts.joins(:category).where(category: params[:category])
      #@posts = @posts.where(category: params[:category])
      @category = Category.find(params[:category]).name #検索結果画面のタイトルで使用
    end

    if params[:usability].present? #使用感で検索された場合
      @posts = @posts.where(usability: params[:usability])
      if params[:usability] == 'moist' #検索結果画面のタイトルで使用
        @usability = 'しっとり'
      else
        @usability = 'さっぱり'
      end
    end

    if params[:price].present? #金額で検索された場合
      @posts = @posts.where('price <= ?', params[:price]) #入力された金額以下のものを探す
      @price = params[:price].to_i.to_s(:delimited)#検索結果画面のタイトルで使用
      @unit = '円以下' #検索結果画面のタイトルで使用
    end
  end

  private

  def post_params
    params.require(:post).permit(:item_name, :introduction, :brand, :usability, :ingredient1, :ingredient2, :ingredient3, :price, :category_id, :star, :image).merge(user_id: current_user.id)
  end
end
