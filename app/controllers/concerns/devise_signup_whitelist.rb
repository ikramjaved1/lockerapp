module DeviseSignupWhitelist
    extend ActiveSupport::Concern
    included do
      before_action :configure_permitted_parameters, if: :devise_controller?
    end
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys:[:user_name, :phone_number])
      devise_parameter_sanitizer.permit(:account_update, keys:[:user_name, :phone_number])
    end
  end