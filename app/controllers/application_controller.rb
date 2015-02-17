class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    registration_params = [:email, :password, :password_confirmation, :username, :name]

    [:sign_in, :sign_up, :account_update].each do |method_name|
      devise_parameter_sanitizer.for(method_name) do |u|
        u.permit(method_name == :sign_in ? registration_params << :remember_me : registration_params )
      end
    end
  end
end
