class Admin::CategoriesController < ApplicationController

  def index
    @category   = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path
    else
      @categories = Category.all
      render 'index'
    end
  end

  def edit
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
