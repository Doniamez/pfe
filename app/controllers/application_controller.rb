class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parametres, if: :devise_controller?
  protected
  def configure_permitted_parametres
    devise_parameter_sanitizer.permit(:sing_up, keys: [:fullname])
        devise_parameter_sanitizer.permit(:account_update, keys: [:fullname, :avatar, :phone_number, :description, :email, :password, :password_confirmation])
  end
end
