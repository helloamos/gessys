class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, if: -> { controller_name == 'sessions' && action_name == 'create' }
  after_action :flash_to_headers
  # Include Application helper.
	include ApplicationHelper
 
  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up)
		devise_parameter_sanitizer.permit(:account_update)
	end
	

  
end
