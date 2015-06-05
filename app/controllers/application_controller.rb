class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_seller

  protected
  #this is where we create a method that returns a logged in user.
  #This method will at first attempt to return the current user,
  #this is the @user part. The || says: OR if the @user doesn't exist, assign the result of User.find...
  #to @user, BUT, only attempt the User.find if there is a :user_id stored in the session.
  def current_seller
    @current_seller ||= Seller.find session[:seller_id]  if session[:seller_id]
  end

  #we add this method in under the protected section
  def authorize
    unless current_seller
      flash[:error] = "you must sign in first to go to that page"
      redirect_to new_session_path
    end
  end



end
