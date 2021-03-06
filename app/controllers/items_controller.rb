class ItemsController < ApplicationController

  def index
    @items = Item.all

  end

  def show
  @item = Item.find(params[:id])
  @seller = @item.seller

  end

  def edit
    @item = Item.find(params[:id])

  end

  def new
    @item = Item.new

  end

  def create
    item = Item.new(params.require(:item).permit(:seller_id, :title, :description, :price, :inventory, :image))
    category = Category.find(params[:category_id])
    item.categories << category
    current_seller.items << item
    if item.save
      redirect_to seller_account_path(current_seller.id)
    else
      render :new
    end
  end

  def update
    params[:item]
    item = Item.find(params[:id])
    category = Category.find_by_name(params[:category])
    if item.update_attributes(params.require(:item).permit(:seller_id, :title, :description, :price, :inventory, :image, :category_id))
      redirect_to seller_account_path(current_seller.id)
    else
      render :edit
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to items_path
  end

  # //find all items by seller(current seller)
  def by_seller
    @items = Item.where(seller: current_seller)
    @seller = Seller.find(params[:id])

  end




  end



