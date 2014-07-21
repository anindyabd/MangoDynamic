class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_filter :validate_user

  def current_cart
  	Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
  	cart = Cart.create
  	session[:cart_id] = cart.id
  	cart
  end

  private
  def validate_user
    if current_user.id == params[:id].to_i
      
    else
      flash[:error] = "You must login to continue"
      redirect_to(:back)
    end
  end
end
