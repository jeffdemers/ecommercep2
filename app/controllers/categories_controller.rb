class CategoriesController < ApplicationController
  def edit
  end

  def index
    @categories = Category.all
  end

  def new

  end

  def show
    @category = Category.find(params[:id])
    cat  = Category.find(params[:id])
    @item = Item.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])

  end

  def update
    params[:category]
    category = Category.find(params[:id])
    if category.update_attributes(params.require(:category).permit(:name, :description, :image, :category_id, :rank))
      redirect_to home_page_path
    else
      render :edit
    end
  end



end
