class ApplicationController < ActionController::Base
  protect_from_forgery


  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate_admin_user!
    if current_user
      return if current_user.admin?
      flash[:notice] = "You must be admin to access admin pages."
      redirect_to root_path
    else
      redirect_to signin_path
    end
  end

end
