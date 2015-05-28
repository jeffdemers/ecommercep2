class ItemsController < ApplicationController

  def index
    @items = Item.all

  end

  def show
  @item = Item.find (params[:id])
  end

  def edit
    @item = Item.find(params[:id])

  end

  def new

  end

  def update
    params[:item]
    item = Item.find(params[:id])
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
