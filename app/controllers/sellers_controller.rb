class SellersController < ApplicationController

  def index
  end

  def show
  end

  #return a view named 'new' that will be used to register a new user
  def new
    @seller = Seller.new

  end

  def create
    if Seller.create(seller_params)
      #redirect to signed in
      flash[:success] = 'You account has been added! Please Sign in.'
      redirect_to new_session_path
    else
      flash[:error] = 'Registration Failed!'
      redirect_to new_session_path
    end
  end

  # def update
  #   params[:seller]
  #   item = Seller.find(params[:id])
  #   if seller.update_attributes(params.require(:seller).permit(:shop_name, :seller_name, :purchase_description, :business_desription, :logo))
  #     redirect_to seller_account_path(current_seller.id)
  #   else
  #     render :edit
  #   end
  # end
  #
  #
  # def edit
  #   @seller = Seller.find(params[:id])

  # end

  private

  def seller_params
    params.require(:seller).permit(:email,:password,:password_confirmation,:shop_name,:logo,:business_description,:seller_name, :purchase_desription)
  end




end


