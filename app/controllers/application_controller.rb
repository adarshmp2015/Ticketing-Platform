class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception 
   before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
        # Fields for sign up
        devise_parameter_sanitizer.for(:sign_up)  { |u| u.permit( :email, :password, :current_password, :gender, :name,)}
        # Fields for editing an existing account
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :current_password, :gender, :name )}
    end

    $tickets =1
     $count =5


end
