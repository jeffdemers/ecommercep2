class SessionsController < ApplicationController
  def new
    @seller = Seller.new
  end

  #the following methods can be placed after the 'new' action method
  def create
    seller = Seller.where(email: seller_params[:email]).first

    if seller && seller.authenticate(seller_params[:password])
      session[:seller_id] = seller.id

      flash[:success] = 'Welcome!'
      redirect_to seller_account_path(current_seller.id)
    else
      #redirect back to the page
      flash[:error] = 'Email or Password login error'

      redirect_to create_session_path
    end
  end

  def destroy
    session[:seller_id] = nil
    flash[:error] = ''
    redirect_to new_session_path
  end

  private

  def seller_params
    params.require(:seller).permit(:email,:password)
  end



end
