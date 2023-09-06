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
    @posts = Post.all
    if params[:category].present?
      #@posts = Post.where('brand LIKE ?', "%#{params[:keyword]}%")
      @posts = @posts.joins(:category).where(category: params[:category])
      #@posts = @posts.where(category: params[:category])
      @category = Category.find(params[:category]).name
    end
    if params[:usability].present?
      @posts = @posts.where(usability: params[:usability])

      if params[:usability] == 'moist'
        @usability = 'sittori'
      else
        @usability = 'sappari'
      end
    end
    if params[:price].present?
      @posts = @posts.where('price <= ?', params[:price])
      @price = params[:price].to_i.to_s(:delimited)
    end



    #@keywords = [params[:keyword], params[:price], params[:distance]]
  end

  private

  def post_params
    params.require(:post).permit(:item_name, :introduction, :brand, :usability, :ingredient1, :ingredient2, :ingredient3, :price, :category_id, :star, :image).merge(user_id: current_user.id)
  end
end
