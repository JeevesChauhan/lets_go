class ApplicationController < ActionController::Base

  #Only when configure_permitted_parameters when using devise controllers
before_action :configure_permitted_parameters, if: :devise_controller?

protected
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:trainer])
end


end
