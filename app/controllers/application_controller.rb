class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD

  # Include Application helper.
	include ApplicationHelper
 
  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up)
		devise_parameter_sanitizer.permit(:account_update)
	end
	

  
=======
>>>>>>> 48238445d4ca67f96f5805c6a30dee3fcf930c08
end
