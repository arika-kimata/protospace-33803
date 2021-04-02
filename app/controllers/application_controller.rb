class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :email, :encrypted_passwor, :name, :profile, :occupation, :position ])
    devise_parameter_sanitizer.permit(:sign_in, keys: [ :email, :encrypted_passwor ])
  end
end