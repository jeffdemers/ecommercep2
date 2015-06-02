class ItemsController < ApplicationController

  def index
    @items = Item.all

  end

  def show
  @item = Item.find(params[:id])

  end

  def edit
    @item = Item.find(params[:id])

  end

  def new
    @item = Item.new

  end

  def create
    params[:item]
    item = Item.new(params.require(:item).permit(:title, :description, :price, :inventory, :image, :category_id))
    if item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def update
    params[:item]
    item = Item.find(params[:id])
    category = Category.find_by_name(params[:category])
    item.categories << category
    if item.update_attributes(params.require(:item).permit(:title, :description, :price, :inventory, :image, :category_id))
      redirect_to items_path
    else
      render :edit
    end
  end



  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to items_path
  end


end
