class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    # helper_method :current_user

    before_action :authenticate_user!

    before_action :configure_permitted_parameters, if: :devise_controller?

  #   def current_user
  # 		@current_user ||= User.find(session[:user_id]) if session[:user_id]
 	# end

  # def current_user
  #  @current_user ||= session[:current_user_id] && User.find_by_id(session[:current_user_id])
  #  end
   protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  end

end
