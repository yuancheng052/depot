class ApplicationController < AcationController::Base
  protect_from_forgery 

  private 
  def current_cart
	  Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
	  cart = Cart.create
	  session[:cartt_id] = cart.id
	  cart
  end
end

