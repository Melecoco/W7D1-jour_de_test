class ApplicationController < ActionController::Base
    def home
    end
    before_action :configure_permitted_parameters, if: :devise_controller?
      
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    end
        
end

