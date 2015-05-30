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

  end

  def edit
    @category = Category.find(params[:id])

  end

  def update
    params[:category]
    category = Category.find(params[:id])
    if category.update_attributes(params.require(:category).permit(:name, :description, :image, :category_id, :rank))
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to categories_path
  end



end
