class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	def require_user
		if session[:user_id]
			true
		else
			redirect_to new_user_path
		end
	end
end
