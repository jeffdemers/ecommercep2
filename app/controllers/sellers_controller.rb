class SellersController < ApplicationController
  def edit
  end

  def index
  end

  #return a view named 'new' that will be used to register a new user
  def new
    @seller = Seller.new
  end

  def show
  end

  def create

    if Seller.create(seller_params)
      #redirect to signed in
      flash[:success] = 'you are registered'
      redirect_to items_path
    else

      flash[:error] = 'registration has failed'

      redirect_to new_session_path

    end
  end

  private

  def seller_params
    params.require(:seller).permit(:email,:password,:password_confirmation)
  end

end
