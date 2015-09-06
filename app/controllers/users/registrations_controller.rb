class Users::RegistrationsController < Devise::RegistrationsController
  

  	def after_update_path_for(users)
  	 	dashboard_path
  	end
  	

end



