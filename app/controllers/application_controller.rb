class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  helper_method :current_account

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  def current_account
   user = User.find_by_id(current_user.id)
   if user
     Account.create({user_id: user.id})
   else
     redirect_to new_user_session_path
   end
 end
 
end
