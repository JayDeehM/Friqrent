class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |user_params|
        user_params.permit({ roles: [] }, :email, :password, :password_confirmation)
      end
    end
    
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |company_params|
        company_params.permit({ roles: [] }, :avatar, :email, :company_name, :activated, :password, :password_confirmation)
      end
    end

end
